<?php
    require_once("../includes/config.php");
    require_once("../email/php-mailjet-v3-simple.class.php");

    if(isset($_POST["username"]) && isset($_POST["from"]) && isset($_POST["to"]) && isset($_POST["duration"]) && isset($_POST["txnHash"])) {
        $fromAccount = $_POST["from"];
        $toAccount = $_POST["to"];
        $duration = $_POST["duration"];
        $txnHash = $_POST["txnHash"];
        $username = $_POST["username"];


        $query = $con->prepare("SELECT txnHash FROM billing WHERE txnHash=:txnHash");
        $query->bindValue(":txnHash", $txnHash);

        $query->execute();
        if ($query->rowCount() == 1) {
            echo "Error #TXN";
            exit();
        } 
        else {

            if($duration == "1" || $duration == "3" || $duration == "6" || $duration == "12"){
                $unixDuration = 2592000 * $duration;
            } else {
                echo "Error #DRN";
                exit();
            }
            $scrapeCounter = 1;
            $done = 0;  
            while ($scrapeCounter <= 15) {
                $scrapeCounter += 1;
                sleep(5);

                $options = array('http'=>array('method'=>"GET", 'header'=>"User-Agent: doodleBot/0.1\n"));
                $context = stream_context_create($options);
                $url = "https://ropsten.etherscan.io/tx/".$txnHash;
                $doc = new DomDocument();
                @$doc->loadHTML(file_get_contents($url, false, $context));

                $bodySoup = @$doc->getElementsByTagName("body")[0]->nodeValue;
                $times = @explode("ago",$bodySoup);

                $times = @explode(")", $times[1]);

                $times = @explode("(", $times[0]);
 
                $times = @explode("(", $times[1]);

                $times = @substr($times[0], 0, 23);

                $scrapedTimestamp = (int)strtotime($times)+19800;

                $currentTimestamp = time();
                // echo "<br><br>Current Timestamp: ".$currentTimestamp;
                // echo "<br><br>Scraped Timestamp: ".$scrapedTimestamp;
                $timeDiff = abs($scrapedTimestamp - $currentTimestamp);
                $m = floor($timeDiff/60);

                $scrapedHash  = @$doc->getElementById("spanTxHash")->nodeValue;
                $scrapedFrom = @$doc->getElementById("addressCopy")->nodeValue;
                $scrapedTo = @$doc->getElementById("contractCopy")->nodeValue;

                $scrapedAmount =  @$doc->getElementById("ContentPlaceHolder1_spanValue")->textContent;
                $amountArr = @explode("Ether",$scrapedAmount);
                $scrapedAmount = @$amountArr[0];
                //echo $scrapedAmount;

                $classname="u-label u-label--sm u-label--success rounded";
                $finder = new DomXPath($doc);
                $spaner = @$finder->query("//*[contains(@class, '$classname')]");
                $txnStatus = @$spaner->item(0)->textContent;

                if($scrapedHash != $txnHash) {
                    //echo "HASH PROBLEM". $scrapedHash;
                    continue;
                }
                if($scrapedFrom != $fromAccount) {
                    //echo "FROM ACC PROBLEM";
                    continue;
                }
                if($scrapedTo != $toAccount) {
                    //echo "TO ACC PROBLEM";
                    continue;
                }
                if($duration == "1" && $scrapedAmount != 0.0083){
                    //echo "1MO PROBLEM";
                    continue;
                }
                if($duration == "3" && $scrapedAmount != 0.014){
                    //echo "3MO PROBLEM";
                    continue;
                }
                if($duration == "6" && $scrapedAmount != 0.04){
                    //echo "6MO PROBLEM";
                    continue;
                }
                if($duration == "12" && $scrapedAmount != 0.066){
                    //echo "12MO PROBLEM";
                    continue;
                }

                if($txnStatus == "Success" && $m <= 5) {
                    $done = 1;
                    break;
                }
                
                }

                if($done == 1){
                    echo "FLIXTREME_SUCCESS";
                } else {
                    echo "FLIXTREME_FAILURE";
                }    
            
        }
            


            $query = $con->prepare("INSERT INTO billing (fromAccount, toAccount, txnHash, duration) VALUES(:fromAccount, :toAccount, :txnHash, :duration)");
            $query->bindValue(":fromAccount", $fromAccount);
            $query->bindValue(":toAccount", $toAccount);
            $query->bindValue(":txnHash", $txnHash);
            $query->bindValue(":duration", $duration);
            $query->execute();

            $query = $con->prepare("SELECT validityTimestamp FROM users WHERE username=:username");
            $query->bindValue(":username", $username);
            $query->execute();
            $ts1 = $query->fetchColumn();
            $ts1 = $ts1 + $unixDuration;
            $ts2 = time() + $unixDuration;
            $validityTimestamp = max($ts1, $ts2);

            $query = $con->prepare("UPDATE users SET validityTimestamp=:validityTimestamp WHERE username=:username");
            $query->bindValue(":validityTimestamp", $validityTimestamp);
            $query->bindValue(":username", $username);
            $query->execute();

            $query = $con->prepare("SELECT email FROM users WHERE username=:username");
            $query->bindValue(":username", $username);
            $query->execute();
            $emailTo = $query->fetchColumn();

            $logoUrl = "http://" . $_SERVER["HTTP_HOST"] . "/email/flixtreme.png";
            $siteUrl = "http://" . $_SERVER["HTTP_HOST"];
        //MAIL SEND 
        $html_part = file_get_contents("../email/transactionEmail.html");
        $html_part = str_replace('{_FLIXTREME_LOGO_URL_}', $logoUrl, $html_part);
        $html_part = str_replace('{_FLIXTREME_USERNAME_}', $username, $html_part);
        $html_part = str_replace('{_FLIXTREME_TXN_HASH_}', $txnHash, $html_part);
        $html_part = str_replace('{_FLIXTREME_SUB_DURATION_}', $duration, $html_part);
        $html_part = str_replace('{_FLIXTREME_TXN_LINK_}', $url, $html_part);
        $html_part = str_replace('{_FLIXTREME_URL_}', $siteUrl, $html_part);
        
        

$mj = new Mailjet('54f0f6ff31fd5f1f6aa7d0211a10d40d','c3171fa3ba30595ddf712a9cd0417141');
    $params = array(
        "method" => "POST",
        "from" => "svpuzzlemaster@gmail.com",
        "to" => $emailTo,
        "subject" => "Transaction successful | Flixtreme 📺",
        "html" => $html_part
    );

    $result = $mj->sendEmail($params);

        }
         else {
        echo "ERROR #POST";
        return;
    }
?>
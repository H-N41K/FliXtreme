<?php


class User {
    private $con, $sqlData;

    public function __construct($con, $username) {
        $this->con = $con;

        $query = $con->prepare("SELECT * FROM users WHERE username=:username");
        $query->bindValue(":username", $username);
        $query->execute();

        $this->sqlData = $query->fetch(PDO::FETCH_ASSOC);
    }

    public function getFirstName() {
        return $this->sqlData["firstName"];
    }

    public function getLastName() {
        return $this->sqlData["lastName"];
    }

    public function getEmail() {
        return $this->sqlData["email"];
    }

    public function getUsername() {
        return $this->sqlData["username"];
    }

    public function getIsSubscribed() {
        $currentTimestamp = time();
        $validityTimestamp = $this->sqlData["validityTimestamp"];
        if ($currentTimestamp < $validityTimestamp){
            return 1;
        }
        else return 0;
        //return $this->sqlData["isSubscribed"];
    }

    public function getRemainingTime() {
        $currentTimestamp = time();
        $validityTimestamp = $this->sqlData["validityTimestamp"];
        if ($currentTimestamp < $validityTimestamp){
            $timeDiff = abs($validityTimestamp - $currentTimestamp);

            $d = floor($timeDiff/86400);
            $_d = ($d < 10 ? '0' : '').$d;

            $h = floor(($timeDiff-$d*86400)/3600);
            $_h = ($h < 10 ? '0' : '').$h;

            $m = floor(($timeDiff-($d*86400+$h*3600))/60);
            $_m = ($m < 10 ? '0' : '').$m;

            $s = $timeDiff-($d*86400+$h*3600+$m*60);
            $_s = ($s < 10 ? '0' : '').$s;

    $time_str = $_d.' days, '.$_h.' hours, '.$_m.' minutes, '.$_s." seconds";
    return $time_str;
        }
        return 0;

    }

    public function setIsSubscribed($value) {
        $query = $this->con->prepare("UPDATE users SET isSubscribed=:isSubscribed WHERE username=:un");
        $query->bindValue(":isSubscribed", $value);
        $query->bindValue(":un", $this->getUsername());

        if($query->execute()) {
            $this->sqlData["isSubscribed"] = $value;
            return true;
        }

        return false;
    }
}

?>
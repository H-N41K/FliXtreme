<?php
    require_once("includes/header.php");
    require_once("includes/classes/Account.php");
    require_once("includes/classes/FormSanitizer.php");
    require_once("includes/classes/Constants.php");



    $user = new User($con, $userLoggedIn);


    // if (isset($_GET['success']) && $_GET['success'] == 'true') {
    //     $token = $_GET['token'];
    //     $agreement = new \PayPal\Api\Agreement();

    //     $subscriptionMessage = "<div class='alertError'>
    //                                 Something went wrong!
    //                             </div>";

    //     try {
    //         // Execute agreement
    //         $agreement->execute($token, $apiContext);

    //         $result = BillingDetails::insertDetails($con, $agreement, $token, $userLoggedIn);

    //         $result = $result && $user->setIsSubscribed(1);

    //         if($result) {
    //             $subscriptionMessage = "<div class='alertSuccess'>
    //                                         You're all signed up!
    //                                     </div>";
    //         }

    //     } catch (PayPal\Exception\PayPalConnectionException $ex) {
    //         echo $ex->getCode();
    //         echo $ex->getData();
    //         die($ex);
    //     } catch (Exception $ex) {
    //         die($ex);
    //     }
    // } else if (isset($_GET['success']) && $_GET['success'] == 'false') {
    //     $subscriptionMessage = "<div class='alertFailure'>
    //                             User cancelled or something went wrong!
    //                         </div>";
    // }
?>

<div class="settingsContainer column">
    <div class="formSection">
            <h2>Choose a plan that's right for you:</h2>
            <table style="color: white; " border="1" bordercolor='white'>
                <tbody>
                <tr>
                    <td>Duration</td>
                    <td align="center">1 month</td>
                    <td align="center">3 months</td>
                    <td align="center">6 months</td>
                    <td align="center">12 months</td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td align="center">0.0083 ETH</td>
                    <td align="center">0.014 ETH</td>
                    <td align="center">0.04 ETH</td>
                    <td align="center">0.066 ETH</td>
                </tr>
                <tr>
                    <td>HD Available</td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                </tr>
                <tr>
                    <td>Watch on your laptop and desktop</td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                </tr>
                <tr>
                    <td>Screens you can watch on at the same time</td>
                    <td align="center">1</td>
                    <td align="center">1</td>
                    <td align="center">1</td>
                    <td align="center">1</td>
                </tr>
                <tr>
                    <td>Unlimited movies and TV Shows</td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                    <td align="center"><i class="fas fa-check" aria-hidden="true"></i></td>
                </tr>
                <tr>
                    <td>Payment Methods</td>
                    <td class="payTD"><button onclick="buy_1m();"><img></button></td>
                    <td class="payTD"><button onclick="buy_3m()"><img></button></td>
                    <td class="payTD"><button onclick="buy_6m()"><img></button></td>
                    <td class="payTD"><button onclick="buy_12m()"><img></button></td>
                    
                </tr>
                <tr></tr>
                </tbody>
                
            </table>
    </div>
</div>

<script type="text/javascript">
    window.addEventListener('load', async () => {
          loadWeb3();
          loadBlockchainData();
          checkNetwork();   
      });
    async function loadWeb3() {
        // Modern dapp browsers...
        if (window.ethereum) {
            window.web3 = new Web3(ethereum);
            try {
                // Request account access if needed
                console.log("window.ethereum");
                ethereum.enable();
                ethereum.autoRefreshOnNetworkChange = false;
    
                ethereum.on('accountsChanged', function () {
                //location.reload();
                });
    
                ethereum.on('networkChanged', function () {
                //location.reload();
                });
            } catch (error) {
                console.log(error); // User denied account access...
            }
        }
        // Legacy dapp browsers...
        else if (window.web3) {
            window.web3 = new Web3(web3.currentProvider);
            console.log("window.currentProvider");
            // Acccounts always exposed
        }
        // Non-dapp browsers...
        else {
            alert('Please install MetaMask Wallet to proceed');
            console.log('Non-Ethereum browser detected. You should consider trying MetaMask!');
        }
        console.log("version");
        var version = web3.version;
        console.log(version);
      }

      async function loadBlockchainData() {
      window.currentAccount = await web3.eth.getAccounts();
      window.currentAccount = window.currentAccount[0];     
      }

      async function checkNetwork() {
        window.networkId = await web3.eth.net.getId();
        if (window.networkId == 3) {
          console.log("Connected To Ropsten Network!");
        } else {
          window.alert('Please switch to Ropsten Network in your MetaMask Wallet in order to proceed');
        }
      }

      async function buy_1m() {
        window.networkId = await web3.eth.net.getId();
        if (window.networkId == 3) {
          console.log("Connected To Ropsten Network!");
        } else {
          window.alert('Please switch to Ropsten Network in your MetaMask Wallet in order to proceed');
          return;
        }

        var send = await web3.eth.sendTransaction(
            { 
               from:window.currentAccount.toLowerCase(),
               to: "0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80".toLowerCase(), 
               value: web3.utils.toWei("0.0083", "ether")
           },
           function(error, result) {
            if(error) 
                {
                    //alert("Error #" + error.code + ": " + error.message);
                    console.log('Error is '+error);
                    return;
                }
        $('#loadingModal').modal('show');        
        $.post("ajax/subscribe.php", {
            username: "<?php echo $userLoggedIn;?>",
            from: window.currentAccount.toLowerCase(),
            to: "0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80".toLowerCase(),
            duration: "1",
            txnHash: result 
        })
        .done(function (data) {
            //alert(data);
            console.log(data);
            if (data=="FLIXTREME_SUCCESS") {
                    $('#loadingModal').modal('hide'); 
                    $('#successModal').modal('show'); 
            }

            if (data=="FLIXTREME_FAILURE"){
                $('#loadingModal').modal('hide'); 
                $('#failureModal').modal('show');    
            }  
        });
           
           });
    }

    async function buy_3m() {

        window.networkId = await web3.eth.net.getId();
        if (window.networkId == 3) {
          console.log("Connected To Ropsten Network!");
        } else {
          window.alert('Please switch to Ropsten Network in your MetaMask Wallet in order to proceed');
          return;
        }

        var send = await web3.eth.sendTransaction(
            { 
                from:window.currentAccount.toLowerCase(),
                to: "0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80".toLowerCase(), 
                value: web3.utils.toWei("0.014", "ether")
           },
           function(error, result) {
            if(error) 
                {
                    //alert("Error #" + error.code + ": " + error.message);
                    console.log('Error is '+error);
                    return;
                }
        $('#loadingModal').modal('show');         
        $.post("ajax/subscribe.php", {
            username: "<?php echo $userLoggedIn;?>",
            from: window.currentAccount.toLowerCase(),
            to: "0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80".toLowerCase(),
            duration: "3",
            txnHash: result 
        })
        .done(function (data) {
            //alert(data);
            console.log(data);
            if (data=="FLIXTREME_SUCCESS") {
                    $('#loadingModal').modal('hide'); 
                    $('#successModal').modal('show'); 
            }

            if (data=="FLIXTREME_FAILURE"){
                $('#loadingModal').modal('hide'); 
                $('#failureModal').modal('show');    
            } 
        });
           
           });
    }

    async function buy_6m() {

        window.networkId = await web3.eth.net.getId();
        if (window.networkId == 3) {
          console.log("Connected To Ropsten Network!");
        } else {
          window.alert('Please switch to Ropsten Network in your MetaMask Wallet in order to proceed');
          return;
        }

        var send = await web3.eth.sendTransaction(
            { 
                from:window.currentAccount.toLowerCase(),
                to: "0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80".toLowerCase(), 
                value: web3.utils.toWei("0.04", "ether")
           },
           function(error, result) {
            if(error) 
                {
                    //alert("Error #" + error.code + ": " + error.message);
                    console.log('Error is '+error);
                    return;
                }
        $('#loadingModal').modal('show'); 
        $.post("ajax/subscribe.php", {
            username: "<?php echo $userLoggedIn;?>",
            from: window.currentAccount.toLowerCase(),
            to: "0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80".toLowerCase(),
            duration: "6",
            txnHash: result 
        })
        .done(function (data) {
            //alert(data);
            console.log(data);
            if (data=="FLIXTREME_SUCCESS") {
                    $('#loadingModal').modal('hide'); 
                    $('#successModal').modal('show'); 
            }

            if (data=="FLIXTREME_FAILURE"){
                $('#loadingModal').modal('hide'); 
                $('#failureModal').modal('show');    
            }
        });
           
           });
    }

    async function buy_12m() {

        window.networkId = await web3.eth.net.getId();
        if (window.networkId == 3) {
          console.log("Connected To Ropsten Network!");
        } else {
          window.alert('Please switch to Ropsten Network in your MetaMask Wallet in order to proceed');
          return;
        }

        var send = await web3.eth.sendTransaction(
            { 
                from:window.currentAccount.toLowerCase(),
                to: "0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80".toLowerCase(), 
                value: web3.utils.toWei("0.066", "ether")
           },
           function(error, result) {
            if(error) 
                {
                    //alert("Error #" + error.code + ": " + error.message);
                    console.log('Error is '+error);
                    return;
                }
        $('#loadingModal').modal('show'); 
        $.post("ajax/subscribe.php", {
            username: "<?php echo $userLoggedIn;?>",
            from: window.currentAccount.toLowerCase(),
            to: "0xcb2698186dD2fAcF6Ba99B5235fCDa606a192C80".toLowerCase(),
            duration: "12",
            txnHash: result 
        })
        .done(function (data) {
            //alert(data);
            console.log(data);
            if (data=="FLIXTREME_SUCCESS") {
                    $('#loadingModal').modal('hide'); 
                    $('#successModal').modal('show'); 
            }

            if (data=="FLIXTREME_FAILURE"){
                $('#loadingModal').modal('hide'); 
                $('#failureModal').modal('show');    
            }
        });
           
           });
    }




</script>

<div class="modal fade" id="loadingModal" tabindex="-1" role="dialog" aria-labelledby="loadingModal" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content" style="background-color:#29243e;">
      
      <div class="modal-body" style="color: white; text-align: center;">
        <img src="owncloud/data/admin/files/assets/images/flixtreme.svg" style="width: 45%;"><br><br>
        Verifying your payment... We're almost done...<br>You are just one step away from streaming premium content! <br>
        <img src="owncloud/data/admin/files/assets/images/loading-spinner.gif" style="width: 15%;">
      </div>

    </div>
  </div>
</div>

<div class="modal fade" id="successModal" tabindex="-1" role="dialog" aria-labelledby="successModal" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content" style="background-color:#29243e;">
      
      <div class="modal-body" style="color: white; text-align: center;">
        <img src="owncloud/data/admin/files/assets/images/flixtreme.svg" style="width: 45%;"><br><br>
        <i class="fas fa-check-circle fa-5x"></i><br>
        Transaction Successful !<br>
        <button class="elegantRed" onclick="location.href='index.php';">Begin binge watching!&nbsp;&nbsp;😉</button>
        
      </div>

    </div>
  </div>
</div>

<div class="modal fade" id="failureModal" tabindex="-1" role="dialog" aria-labelledby="failureModal" aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content" style="background-color:#29243e;">
      
      <div class="modal-body" style="color: white; text-align: center;">
        <img src="owncloud/data/admin/files/assets/images/flixtreme.svg" style="width: 45%;"><br><br>
        <i class="fas fa-exclamation-triangle fa-5x"></i><br><br>
        Error - #73GDJ <br> Uh-oh! &nbsp;😩&nbsp;&nbsp;Transaction Failed! <br>
        <button class="elegantRed" onclick="location.reload();">Try again!</button>
        
      </div>

    </div>
  </div>
</div>



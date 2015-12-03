<?php
require_once("Core/HelperFunctions.php");
    const AppNameConst = "AppName";
    const C9UsernameConst = "C9Username";
    const SubmittedConst = "Submitted";
    $errorMessage = $successMessage = "";
    $dataIsSubmitted = isset($_POST[SubmittedConst]);
    $appNameSet = isset($_POST[AppNameConst]) && !empty($_POST[AppNameConst]);
    $usernameSet = isset($_POST[C9UsernameConst]) && !empty($_POST[C9UsernameConst]);
    LogData('$dataIsSubmitted', $dataIsSubmitted);
    LogData('$appNameSet', $appNameSet);
    LogData('$usernameSet', $usernameSet);
    if($dataIsSubmitted && !$appNameSet) {
        $errorMessage = '<div class="error">The application to deploy must be given</div>';
        $hasError = true;
    } 
    if($dataIsSubmitted && !$usernameSet) {
        $errorMessage .= '<div class="error">The C9 username must be given</div>';
        $hasError = true;
    } 
    if($dataIsSubmitted && $appNameSet && $usernameSet) {
        $appName =  $_POST[AppNameConst];
        $username = $_POST[C9UsernameConst];
        $successMessage = '<div class="success">The username => ' . $username . ' ; the app => '. $appName .'</div>';
        require_once("Core/Process.php");
    }
?>
<!DOCTYPE html>
<html>
<head>
    <title>Cloup Deploy on C9</title>
    <style type="text/css">
        .error {
            color: #F00;
            padding: 10px;
            border: 2px solid #F66;
            font-weight: bold;
            background-color: #FAA;
        }
        .success {
            color: #00F;
            padding: 10px;
            border: 2px solid #66F;
            font-weight: bold;
            background-color: #AAF;
        }
    </style>
</head>

<body>
    <h1>Deploy an application</h1>
    <p>To do so, you need to type in te application name below and click "Deploy".</p>
    <?php 
        if($hasError) { 
            echo $errorMessage; 
        } else { 
            echo $successMessage; 
        }
    ?>
    <form method="POST" action="Index.php" >
        <input type="text" name="<?php echo C9UsernameConst; ?>" placeholder="<?php echo C9UsernameConst; ?>"/>
        <input type="text" name="<?php echo AppNameConst; ?>" placeholder="<?php echo AppNameConst; ?>"/>
        <input type="text" name="<?php echo SubmittedConst; ?>" value="1" hidden/>
        <input type="submit" value="Deploy"/>
    </form>
</body>

</html>
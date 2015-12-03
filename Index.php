<?php
require_once("Core/HelperFunctions.php");
    const AppNameConst = "AppName";
    const SubmittedConst = "Submitted";
    $errorMessage = $successMessage = "";
    $dataIsSubmitted = isset($_POST[SubmittedConst]);
    $appNameSet = isset($_POST[AppNameConst]) && !empty($_POST[AppNameConst]);
    LogData('$dataIsSubmitted', $dataIsSubmitted);
    LogData('$appNameSet', $appNameSet);
    if($dataIsSubmitted && !$appNameSet) {
        $errorMessage = '<div class="error">The application to deploy must be given</div>';
        $hasError = true;
    } 
    if($dataIsSubmitted && $appNameSet) {
        $appName =  $_POST[AppNameConst];
        $successMessage = '<div class="success">'. $appName .'</div>';
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
        <input type="text" name="<?php echo AppNameConst; ?>"/>
        <input type="text" name="<?php echo SubmittedConst; ?>" value="1" hidden/>
        <input type="submit" value="Deploy"/>
    </form>
</body>

</html>
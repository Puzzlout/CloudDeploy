<?php
    LogData('$appName', $appName);
    $result = shell_exec("~/workspace/CloudDeploymentManager/deploy.sh ". $appName);
    var_dump($result);
<?php
    LogData('$appName', $appName);
    LogData('$username', $username);
    try {
        $deployScript = "/home/ubuntu/workspace/CloudDeploymentManager/deploy.sh";
        echo "deploy.sh exists => " . file_exists($deployScript);
        echo "$deployScript $username $appName";
        //$result = shell_exec("$deployScript $username $appName");
    } catch (Exception $e) {
        var_dump($e);
    }
    var_dump($result);
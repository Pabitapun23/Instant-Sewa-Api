<?php 
return [ 
    'client_id' => env('ARe50SBoyzZmLJSrjEG5-r3XH9GyKTWLvYoDCH5rUS6wvHZglG_iTBChHid5q_K6lJzPYr6HtBXUTKOL',''),
    'secret' => env('EMSJnZ7hIC8cmhO-cih1BfWSgaF8H81F8NX4n6RWJP50LmU84X_Td52WvCgrBr8QGjI0jwPyuDh5tZUx',''),
    'settings' => array(
        'mode' => 'sandbox',
        'http.ConnectionTimeOut' => 1000,
        'log.LogEnabled' => true,
        'log.FileName' => storage_path() . '/logs/paypal.log',
        'log.LogLevel' => 'FINE'
    ),
];
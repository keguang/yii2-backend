<?php
return [
    'components' => [
        'db_admin' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=127.0.0.1;dbname=data_admin',
            'username' => 'datauser',
            'password' => 'Datauser@123',
            'charset' => 'utf8',
        ],
        'db_main' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=127.0.0.1;dbname=db_main',
            'username' => 'datauser',
            'password' => 'Datauser@123',
            'charset' => 'utf8',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
    ],
];
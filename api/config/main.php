<?php

$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-api',
    'name' => 'Mirath API',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'modules' => [
        'v1' => [
            'basePath' => '@app/modules/v1',
            'class' => 'api\modules\v1\Module'
        ],
        'aliases'=>[
            'baseurl'=> 'mirath.beesolution.co',
        ],
    ],
    'components' => [
		'formatter' => [
			'datetimeFormat' => 'php:Y-m-d H:i:s',
			'dateFormat' => 'php:Y-m-d',
			'timeFormat' => 'php:H:i:s',
			'decimalSeparator' => '.',
			'thousandSeparator' => ' ',
			'timeZone' => 'UTC',
		],
        'response' => [
            'class' => 'yii\web\Response',
            'on beforeSend' => function ($event) {
                $response = $event->sender;
                if($response->format == 'html'){
                    $response->format = \yii\web\Response::FORMAT_JSON;
                    $response->data = [
                        'success' => false,
                        'message' => $response->statusText,
                        'data' => null
                    ];
                } else if ($response->statusCode == 400) {
                    $response->data = [
                        'success' => false,
                        'message' => "Bad Request",
                        'data' => [['error' => $response->data['message']]]
                    ];
                }
                else if ($response->statusCode == 401) {
                    $response->data = [
                        'success' => false,
                        'message' => "Unauthorized",
                        'data' => [['error' => "You are requesting with an invalid credential"]]
                    ];
                }
                else if ($response->statusCode == 500) {
                    $response->data = [
                        'success' => false,
                        'message' => "server error",
                        'data' => $response->data,
                        //'data' => [['error' => "Something went wrong, try again later."]]
                    ];
                }
            }
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => false,
        ],

        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'request' => [
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
            ]
        ],
        'urlManagerFrontEnd' => [
            'class' => 'yii\web\urlManager',
            'baseUrl' => '/',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'enableStrictParsing' => true,
            'showScriptName' => false,
            'rules' => [
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => ['v1/test'],
                    'extraPatterns' => [
                        'GET try' => 'try',

                    ],
                ],
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => ['v1/question'],
                ],
            ],
        ]
    ],
    'params' => $params,
];




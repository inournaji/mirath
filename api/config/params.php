<?php

return [
    'adminEmail' => 'nour.n.prog@gmail.com',
	'dates' =>  [
		// format settings for displaying each date attribute
		'displaySettings' => [
			'date' => 'd/m/Y',
			'time' => 'H:i:s A',
			'datetime' => 'd/m/Y H:i:s A',
		],
		// format settings for saving each date attribute
		'saveSettings' => [
			'date' => 'd/m/Y', // saves as unix timestamp
			'time' => 'H:i:s',
			'datetime' => 'd/m/Y H:i:s',
		],

		// automatically use kartik\widgets for each of the above formats
		'autoWidget' => true,

	]
];

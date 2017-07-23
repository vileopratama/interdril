<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class InterdrilModuleSlideshowsCreatePartnersStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'partners',
         'title_column' => 'name',
         'translatable' => true,
         'trashable' => false,
         'searchable' => true,
         'sortable' => true,
    ];

    /**
     * The stream assignments.
     *
     * @var array
     */
    protected $assignments = [
	    'name' => [
		    'required' => true,
		    'translatable' => false,
	    ],
	    'image' => [
		    'required' => true,
	    ],
	    'publish' => [
		    'required' => true,
	    ],
	    'summary' => [
		    'required' => true,
		    'translatable' => true,
	    ],
	    'description' => [
		    'required' => true,
		    'translatable' => true,
	    ],
    ];
}

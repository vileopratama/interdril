<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class InterdrilModuleSlideshowsCreateProductsStream extends Migration
{

    /**
     * The stream definition.
     *
     * @var array
     */
    protected $stream = [
        'slug' => 'products',
         'title_column' => 'title',
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
	    'title' => [
		    'required' => true,
		    'translatable' => true,
	    ],
	    'slug' => [
		    'unique' => true,
		    'required' => true,
	    ],
	    'image' => [
		    'required' => true,
	    ],
	    'url' => [
		    'required' => true,
		    'translatable' => false,
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

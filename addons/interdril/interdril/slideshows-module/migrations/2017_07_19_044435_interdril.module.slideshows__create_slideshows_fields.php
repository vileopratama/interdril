<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class InterdrilModuleSlideshowsCreateSlideshowsFields extends Migration
{

    /**
     * The Addon fields.
     *
     * @var array
     */
    protected $fields = [
	    'title' => 'anomaly.field_type.text',
	    'parent_id' => 'anomaly.field_type.integer',
        'slug' => [
            'type' => 'anomaly.field_type.text',
            'config' => [
                'slugify' => 'title',
                'type' => '_'
            ],
        ],
	    'publish' => [
		    "type"   => "anomaly.field_type.boolean",
		    "config" => [
			    "default_value" => true,
			    "mode"          => "radio",
		    ]
	    ],
	    'image' => 'anomaly.field_type.file',
	    'url'  => 'anomaly.field_type.url',
	    'data_index' => 'anomaly.field_type.text',
	    'data_transition' => 'anomaly.field_type.text',
	    'data_slot_amount' => 'anomaly.field_type.text',
	    'data_hide_after_loop' => 'anomaly.field_type.text',
	    'data_hide_slide_on_mobile' => 'anomaly.field_type.text',
	    'data_ease_in' => 'anomaly.field_type.text',
	    'data_ease_out' => 'anomaly.field_type.text',
	    'data_master_speed' => 'anomaly.field_type.text',
	    'data_thumb' => 'anomaly.field_type.text',
	    'data_rotate' => 'anomaly.field_type.text',
	    'data_save_performance' => 'anomaly.field_type.text',
	    'data_title' => 'anomaly.field_type.text',
	    'data_param' => 'anomaly.field_type.text',
	    'data_description' => 'anomaly.field_type.text',
	    'data_bg_position' => 'anomaly.field_type.text',
	    'data_bg_fit' => 'anomaly.field_type.text',
	    'data_bg_repeat' => 'anomaly.field_type.text',
	    'class' => 'anomaly.field_type.text',
		'data_no_retina'  => 'anomaly.field_type.text',
	    'layer_class' => 'anomaly.field_type.text',
	    'layer_id' => 'anomaly.field_type.text',
	    'layer_data_x' => 'anomaly.field_type.text',
	    'layer_data_y' => 'anomaly.field_type.text',
	    'layer_data_width' => 'anomaly.field_type.text',
	    'layer_data_height' => 'anomaly.field_type.text',
	    'layer_data_type' => 'anomaly.field_type.text',
	    'layer_data_responsive_offset' => 'anomaly.field_type.text',
	    'layer_data_frames' =>  'anomaly.field_type.text',
	    'layer_data_text_align' =>  'anomaly.field_type.text',
	    'layer_data_padding_top' =>  'anomaly.field_type.text',
	    'layer_data_padding_right' =>  'anomaly.field_type.text',
	    'layer_data_padding_bottom' =>  'anomaly.field_type.text',
	    'layer_data_padding_left' =>  'anomaly.field_type.text',
		'layer_image' => 'anomaly.field_type.file',
	    'layer_image_data_ww' => 'anomaly.field_type.text',
	    'layer_image_data_hh' => 'anomaly.field_type.text',
	    'layer_image_data_width' => 'anomaly.field_type.text',
	    'layer_image_data_height' => 'anomaly.field_type.text',
	    'layer_image_data_no_retina' => 'anomaly.field_type.text',
	    'layer_style'  => 'anomaly.field_type.text',
    ];

}

<?php namespace Interdril\SlideshowsModule;

use Anomaly\Streams\Platform\Addon\Module\Module;

class SlideshowsModule extends Module
{

    /**
     * The navigation display flag.
     *
     * @var bool
     */
    protected $navigation = true;

    /**
     * The addon icon.
     *
     * @var string
     */
    protected $icon = 'fa fa-home';

    /**
     * The module sections.
     *
     * @var array
     */
    protected $sections = [
        'slideshows' => [
            'buttons' => [
                'new_slideshow',
            ],
        ],
        'promises' => [
            'buttons' => [
                'new_promise',
            ],
        ],
        'services' => [
            'buttons' => [
                'new_service',
            ],
        ],
        'products' => [
            'buttons' => [
                'new_product',
            ],
        ],
        'partners' => [
            'buttons' => [
                'new_partner',
            ],
        ],
    ];

}

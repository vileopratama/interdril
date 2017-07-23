<?php namespace Interdril\SlideshowsModule;

use Anomaly\Streams\Platform\Addon\AddonServiceProvider;
use Interdril\SlideshowsModule\Partner\Contract\PartnerRepositoryInterface;
use Interdril\SlideshowsModule\Partner\PartnerRepository;
use Anomaly\Streams\Platform\Model\Slideshows\SlideshowsPartnersEntryModel;
use Interdril\SlideshowsModule\Partner\PartnerModel;
use Interdril\SlideshowsModule\Product\Contract\ProductRepositoryInterface;
use Interdril\SlideshowsModule\Product\ProductRepository;
use Anomaly\Streams\Platform\Model\Slideshows\SlideshowsProductsEntryModel;
use Interdril\SlideshowsModule\Product\ProductModel;
use Interdril\SlideshowsModule\Service\Contract\ServiceRepositoryInterface;
use Interdril\SlideshowsModule\Service\ServiceRepository;
use Anomaly\Streams\Platform\Model\Slideshows\SlideshowsServicesEntryModel;
use Interdril\SlideshowsModule\Service\ServiceModel;
use Interdril\SlideshowsModule\Promise\Contract\PromiseRepositoryInterface;
use Interdril\SlideshowsModule\Promise\PromiseRepository;
use Anomaly\Streams\Platform\Model\Slideshows\SlideshowsPromisesEntryModel;
use Interdril\SlideshowsModule\Promise\PromiseModel;
use Interdril\SlideshowsModule\Slideshow\Contract\SlideshowRepositoryInterface;
use Interdril\SlideshowsModule\Slideshow\SlideshowRepository;
use Anomaly\Streams\Platform\Model\Slideshows\SlideshowsSlideshowsEntryModel;
use Interdril\SlideshowsModule\Slideshow\SlideshowModel;
use Illuminate\Routing\Router;

class SlideshowsModuleServiceProvider extends AddonServiceProvider
{

    /**
     * Additional addon plugins.
     *
     * @type array|null
     */
    protected $plugins = [];

    /**
     * The addon Artisan commands.
     *
     * @type array|null
     */
    protected $commands = [];

    /**
     * The addon's scheduled commands.
     *
     * @type array|null
     */
    protected $schedules = [];

    /**
     * The addon API routes.
     *
     * @type array|null
     */
    protected $api = [];

    /**
     * The addon routes.
     *
     * @type array|null
     */
    protected $routes = [
        'admin/slideshows/partners'           => 'Interdril\SlideshowsModule\Http\Controller\Admin\PartnersController@index',
        'admin/slideshows/partners/create'    => 'Interdril\SlideshowsModule\Http\Controller\Admin\PartnersController@create',
        'admin/slideshows/partners/edit/{id}' => 'Interdril\SlideshowsModule\Http\Controller\Admin\PartnersController@edit',
        'admin/slideshows/products'           => 'Interdril\SlideshowsModule\Http\Controller\Admin\ProductsController@index',
        'admin/slideshows/products/create'    => 'Interdril\SlideshowsModule\Http\Controller\Admin\ProductsController@create',
        'admin/slideshows/products/edit/{id}' => 'Interdril\SlideshowsModule\Http\Controller\Admin\ProductsController@edit',
        'admin/slideshows/services'           => 'Interdril\SlideshowsModule\Http\Controller\Admin\ServicesController@index',
        'admin/slideshows/services/create'    => 'Interdril\SlideshowsModule\Http\Controller\Admin\ServicesController@create',
        'admin/slideshows/services/edit/{id}' => 'Interdril\SlideshowsModule\Http\Controller\Admin\ServicesController@edit',
        'admin/slideshows/promises'           => 'Interdril\SlideshowsModule\Http\Controller\Admin\PromisesController@index',
        'admin/slideshows/promises/create'    => 'Interdril\SlideshowsModule\Http\Controller\Admin\PromisesController@create',
        'admin/slideshows/promises/edit/{id}' => 'Interdril\SlideshowsModule\Http\Controller\Admin\PromisesController@edit',
        'admin/slideshows'           => 'Interdril\SlideshowsModule\Http\Controller\Admin\SlideshowsController@index',
        'admin/slideshows/create'    => 'Interdril\SlideshowsModule\Http\Controller\Admin\SlideshowsController@create',
        'admin/slideshows/edit/{id}' => 'Interdril\SlideshowsModule\Http\Controller\Admin\SlideshowsController@edit',
    ];

    /**
     * The addon middleware.
     *
     * @type array|null
     */
    protected $middleware = [
        //Interdril\SlideshowsModule\Http\Middleware\ExampleMiddleware::class
    ];

    /**
     * The addon route middleware.
     *
     * @type array|null
     */
    protected $routeMiddleware = [];

    /**
     * The addon event listeners.
     *
     * @type array|null
     */
    protected $listeners = [
        //Interdril\SlideshowsModule\Event\ExampleEvent::class => [
        //    Interdril\SlideshowsModule\Listener\ExampleListener::class,
        //],
    ];

    /**
     * The addon alias bindings.
     *
     * @type array|null
     */
    protected $aliases = [
        //'Example' => Interdril\SlideshowsModule\Example::class
    ];

    /**
     * The addon class bindings.
     *
     * @type array|null
     */
    protected $bindings = [
        SlideshowsPartnersEntryModel::class => PartnerModel::class,
        SlideshowsProductsEntryModel::class => ProductModel::class,
        SlideshowsServicesEntryModel::class => ServiceModel::class,
        SlideshowsPromisesEntryModel::class => PromiseModel::class,
        SlideshowsSlideshowsEntryModel::class => SlideshowModel::class,
    ];

    /**
     * The addon singleton bindings.
     *
     * @type array|null
     */
    protected $singletons = [
        PartnerRepositoryInterface::class => PartnerRepository::class,
        ProductRepositoryInterface::class => ProductRepository::class,
        ServiceRepositoryInterface::class => ServiceRepository::class,
        PromiseRepositoryInterface::class => PromiseRepository::class,
        SlideshowRepositoryInterface::class => SlideshowRepository::class,
    ];

    /**
     * Additional service providers.
     *
     * @type array|null
     */
    protected $providers = [
        //\ExamplePackage\Provider\ExampleProvider::class
    ];

    /**
     * The addon view overrides.
     *
     * @type array|null
     */
    protected $overrides = [
        //'streams::errors/404' => 'module::errors/404',
        //'streams::errors/500' => 'module::errors/500',
    ];

    /**
     * The addon mobile-only view overrides.
     *
     * @type array|null
     */
    protected $mobile = [
        //'streams::errors/404' => 'module::mobile/errors/404',
        //'streams::errors/500' => 'module::mobile/errors/500',
    ];

    /**
     * Register the addon.
     */
    public function register()
    {
        // Run extra pre-boot registration logic here.
        // Use method injection or commands to bring in services.
    }

    /**
     * Boot the addon.
     */
    public function boot()
    {
        // Run extra post-boot registration logic here.
        // Use method injection or commands to bring in services.
    }

    /**
     * Map additional addon routes.
     *
     * @param Router $router
     */
    public function map(Router $router)
    {
        // Register dynamic routes here for example.
        // Use method injection or commands to bring in services.
    }

}

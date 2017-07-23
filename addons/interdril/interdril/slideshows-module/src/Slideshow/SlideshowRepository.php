<?php namespace Interdril\SlideshowsModule\Slideshow;

use Interdril\SlideshowsModule\Slideshow\Contract\SlideshowRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class SlideshowRepository extends EntryRepository implements SlideshowRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var SlideshowModel
     */
    protected $model;

    /**
     * Create a new SlideshowRepository instance.
     *
     * @param SlideshowModel $model
     */
    public function __construct(SlideshowModel $model)
    {
        $this->model = $model;
    }
}

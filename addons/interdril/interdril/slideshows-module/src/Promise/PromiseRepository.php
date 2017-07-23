<?php namespace Interdril\SlideshowsModule\Promise;

use Interdril\SlideshowsModule\Promise\Contract\PromiseRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class PromiseRepository extends EntryRepository implements PromiseRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var PromiseModel
     */
    protected $model;

    /**
     * Create a new PromiseRepository instance.
     *
     * @param PromiseModel $model
     */
    public function __construct(PromiseModel $model)
    {
        $this->model = $model;
    }
}

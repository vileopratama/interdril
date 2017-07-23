<?php namespace Interdril\SlideshowsModule\Http\Controller\Admin;

use Interdril\SlideshowsModule\Promise\Form\PromiseFormBuilder;
use Interdril\SlideshowsModule\Promise\Table\PromiseTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class PromisesController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param PromiseTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(PromiseTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param PromiseFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(PromiseFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param PromiseFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(PromiseFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}

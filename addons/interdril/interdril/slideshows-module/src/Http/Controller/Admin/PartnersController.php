<?php namespace Interdril\SlideshowsModule\Http\Controller\Admin;

use Interdril\SlideshowsModule\Partner\Form\PartnerFormBuilder;
use Interdril\SlideshowsModule\Partner\Table\PartnerTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class PartnersController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param PartnerTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(PartnerTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param PartnerFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(PartnerFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param PartnerFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(PartnerFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}

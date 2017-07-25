<?php namespace Anomaly\Streams\Platform\Model\Slideshows;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SlideshowsPartnersEntryModel extends EntryModel
{

    

    protected $searchable = true;

    protected $table = 'slideshows_partners';

    protected $titleName = 'name';

    protected $rules = [
'image' => 'required',
'publish' => 'required',
];

    protected $fields = [
'image',
'publish',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Slideshows\SlideshowsPartnersEntryTranslationsModel';

    protected $stream = [
'id' => '33',
'namespace' => 'slideshows',
'slug' => 'partners',
'prefix' => 'slideshows_',
'title_column' => 'name',
'order_by' => 'id',
'locked' => '0',
'hidden' => '0',
'sortable' => '1',
'searchable' => '1',
'trashable' => '0',
'translatable' => '1',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 152,
'sort_order' => 148,
'stream_id' => 33,
'field_id' => 127,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '127',
'namespace' => 'slideshows',
'slug' => 'image',
'type' => 'anomaly.field_type.file',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 127,
'field_id' => 127,
'locale' => 'en',
'name' => 'interdril.module.slideshows::field.image.name',
'placeholder' => 'interdril.module.slideshows::field.image.placeholder',
'warning' => 'interdril.module.slideshows::field.image.warning',
'instructions' => 'interdril.module.slideshows::field.image.instructions',
],
],
],
'translations' => [
[
'id' => 152,
'assignment_id' => 152,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.image.label.partners',
'warning' => 'interdril.module.slideshows::field.image.warning.partners',
'placeholder' => 'interdril.module.slideshows::field.image.placeholder.partners',
'instructions' => 'interdril.module.slideshows::field.image.instructions.partners',
],
],
],
[
'id' => 153,
'sort_order' => 149,
'stream_id' => 33,
'field_id' => 126,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '126',
'namespace' => 'slideshows',
'slug' => 'publish',
'type' => 'anomaly.field_type.boolean',
'config' => 'a:2:{s:13:"default_value";b:1;s:4:"mode";s:5:"radio";}',
'locked' => '1',
'translations' => [
[
'id' => 126,
'field_id' => 126,
'locale' => 'en',
'name' => 'interdril.module.slideshows::field.publish.name',
'placeholder' => 'interdril.module.slideshows::field.publish.placeholder',
'warning' => 'interdril.module.slideshows::field.publish.warning',
'instructions' => 'interdril.module.slideshows::field.publish.instructions',
],
],
],
'translations' => [
[
'id' => 153,
'assignment_id' => 153,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.publish.label.partners',
'warning' => 'interdril.module.slideshows::field.publish.warning.partners',
'placeholder' => 'interdril.module.slideshows::field.publish.placeholder.partners',
'instructions' => 'interdril.module.slideshows::field.publish.instructions.partners',
],
],
],
],
'translations' => [
[
'id' => 33,
'stream_id' => 33,
'locale' => 'en',
'name' => 'interdril.module.slideshows::stream.partners.name',
'description' => 'interdril.module.slideshows::stream.partners.description',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

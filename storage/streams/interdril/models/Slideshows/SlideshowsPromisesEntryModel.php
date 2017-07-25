<?php namespace Anomaly\Streams\Platform\Model\Slideshows;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SlideshowsPromisesEntryModel extends EntryModel
{

    

    protected $searchable = true;

    protected $table = 'slideshows_promises';

    protected $titleName = 'title';

    protected $rules = [
'title' => 'required',
'slug' => 'required|unique:slideshows_promises,slug',
'image' => 'required',
'publish' => 'required',
];

    protected $fields = [
'title',
'slug',
'image',
'publish',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Slideshows\SlideshowsPromisesEntryTranslationsModel';

    protected $stream = [
'id' => '30',
'namespace' => 'slideshows',
'slug' => 'promises',
'prefix' => 'slideshows_',
'title_column' => 'title',
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
'id' => 138,
'sort_order' => 134,
'stream_id' => 30,
'field_id' => 123,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 1,
'field' => [
'id' => '123',
'namespace' => 'slideshows',
'slug' => 'title',
'type' => 'anomaly.field_type.text',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 123,
'field_id' => 123,
'locale' => 'en',
'name' => 'interdril.module.slideshows::field.title.name',
'placeholder' => 'interdril.module.slideshows::field.title.placeholder',
'warning' => 'interdril.module.slideshows::field.title.warning',
'instructions' => 'interdril.module.slideshows::field.title.instructions',
],
],
],
'translations' => [
[
'id' => 138,
'assignment_id' => 138,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.title.label.promises',
'warning' => 'interdril.module.slideshows::field.title.warning.promises',
'placeholder' => 'interdril.module.slideshows::field.title.placeholder.promises',
'instructions' => 'interdril.module.slideshows::field.title.instructions.promises',
],
],
],
[
'id' => 139,
'sort_order' => 135,
'stream_id' => 30,
'field_id' => 125,
'config' => 'a:0:{}',
'unique' => 1,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '125',
'namespace' => 'slideshows',
'slug' => 'slug',
'type' => 'anomaly.field_type.text',
'config' => 'a:2:{s:7:"slugify";s:5:"title";s:4:"type";s:1:"_";}',
'locked' => '1',
'translations' => [
[
'id' => 125,
'field_id' => 125,
'locale' => 'en',
'name' => 'interdril.module.slideshows::field.slug.name',
'placeholder' => 'interdril.module.slideshows::field.slug.placeholder',
'warning' => 'interdril.module.slideshows::field.slug.warning',
'instructions' => 'interdril.module.slideshows::field.slug.instructions',
],
],
],
'translations' => [
[
'id' => 139,
'assignment_id' => 139,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.slug.label.promises',
'warning' => 'interdril.module.slideshows::field.slug.warning.promises',
'placeholder' => 'interdril.module.slideshows::field.slug.placeholder.promises',
'instructions' => 'interdril.module.slideshows::field.slug.instructions.promises',
],
],
],
[
'id' => 140,
'sort_order' => 136,
'stream_id' => 30,
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
'id' => 140,
'assignment_id' => 140,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.image.label.promises',
'warning' => 'interdril.module.slideshows::field.image.warning.promises',
'placeholder' => 'interdril.module.slideshows::field.image.placeholder.promises',
'instructions' => 'interdril.module.slideshows::field.image.instructions.promises',
],
],
],
[
'id' => 141,
'sort_order' => 137,
'stream_id' => 30,
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
'id' => 141,
'assignment_id' => 141,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.publish.label.promises',
'warning' => 'interdril.module.slideshows::field.publish.warning.promises',
'placeholder' => 'interdril.module.slideshows::field.publish.placeholder.promises',
'instructions' => 'interdril.module.slideshows::field.publish.instructions.promises',
],
],
],
],
'translations' => [
[
'id' => 30,
'stream_id' => 30,
'locale' => 'en',
'name' => 'interdril.module.slideshows::stream.promises.name',
'description' => 'interdril.module.slideshows::stream.promises.description',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

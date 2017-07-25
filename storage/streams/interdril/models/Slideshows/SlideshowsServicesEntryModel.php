<?php namespace Anomaly\Streams\Platform\Model\Slideshows;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SlideshowsServicesEntryModel extends EntryModel
{

    

    protected $searchable = true;

    protected $table = 'slideshows_services';

    protected $titleName = 'title';

    protected $rules = [
'title' => 'required',
'slug' => 'required|unique:slideshows_services,slug',
'image' => 'required',
'url' => 'required',
'publish' => 'required',
];

    protected $fields = [
'title',
'slug',
'image',
'url',
'publish',
];

    protected $dates = ['created_at', 'updated_at'];

    protected $relationships = ['image'];

    protected $translatedAttributes = ['title'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Slideshows\SlideshowsServicesEntryTranslationsModel';

    protected $stream = [
'id' => '31',
'namespace' => 'slideshows',
'slug' => 'services',
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
'id' => 142,
'sort_order' => 138,
'stream_id' => 31,
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
'id' => 142,
'assignment_id' => 142,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.title.label.services',
'warning' => 'interdril.module.slideshows::field.title.warning.services',
'placeholder' => 'interdril.module.slideshows::field.title.placeholder.services',
'instructions' => 'interdril.module.slideshows::field.title.instructions.services',
],
],
],
[
'id' => 143,
'sort_order' => 139,
'stream_id' => 31,
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
'id' => 143,
'assignment_id' => 143,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.slug.label.services',
'warning' => 'interdril.module.slideshows::field.slug.warning.services',
'placeholder' => 'interdril.module.slideshows::field.slug.placeholder.services',
'instructions' => 'interdril.module.slideshows::field.slug.instructions.services',
],
],
],
[
'id' => 144,
'sort_order' => 140,
'stream_id' => 31,
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
'id' => 144,
'assignment_id' => 144,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.image.label.services',
'warning' => 'interdril.module.slideshows::field.image.warning.services',
'placeholder' => 'interdril.module.slideshows::field.image.placeholder.services',
'instructions' => 'interdril.module.slideshows::field.image.instructions.services',
],
],
],
[
'id' => 145,
'sort_order' => 141,
'stream_id' => 31,
'field_id' => 128,
'config' => 'a:0:{}',
'unique' => 0,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '128',
'namespace' => 'slideshows',
'slug' => 'url',
'type' => 'anomaly.field_type.url',
'config' => 'a:0:{}',
'locked' => '1',
'translations' => [
[
'id' => 128,
'field_id' => 128,
'locale' => 'en',
'name' => 'interdril.module.slideshows::field.url.name',
'placeholder' => 'interdril.module.slideshows::field.url.placeholder',
'warning' => 'interdril.module.slideshows::field.url.warning',
'instructions' => 'interdril.module.slideshows::field.url.instructions',
],
],
],
'translations' => [
[
'id' => 145,
'assignment_id' => 145,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.url.label.services',
'warning' => 'interdril.module.slideshows::field.url.warning.services',
'placeholder' => 'interdril.module.slideshows::field.url.placeholder.services',
'instructions' => 'interdril.module.slideshows::field.url.instructions.services',
],
],
],
[
'id' => 146,
'sort_order' => 142,
'stream_id' => 31,
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
'id' => 146,
'assignment_id' => 146,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.publish.label.services',
'warning' => 'interdril.module.slideshows::field.publish.warning.services',
'placeholder' => 'interdril.module.slideshows::field.publish.placeholder.services',
'instructions' => 'interdril.module.slideshows::field.publish.instructions.services',
],
],
],
],
'translations' => [
[
'id' => 31,
'stream_id' => 31,
'locale' => 'en',
'name' => 'interdril.module.slideshows::stream.services.name',
'description' => 'interdril.module.slideshows::stream.services.description',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

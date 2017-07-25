<?php namespace Anomaly\Streams\Platform\Model\Slideshows;

use Anomaly\Streams\Platform\Entry\EntryModel;

class SlideshowsProductsEntryModel extends EntryModel
{

    

    protected $searchable = true;

    protected $table = 'slideshows_products';

    protected $titleName = 'title';

    protected $rules = [
'title' => 'required',
'slug' => 'required|unique:slideshows_products,slug',
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

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Slideshows\SlideshowsProductsEntryTranslationsModel';

    protected $stream = [
'id' => '32',
'namespace' => 'slideshows',
'slug' => 'products',
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
'id' => 147,
'sort_order' => 143,
'stream_id' => 32,
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
'id' => 147,
'assignment_id' => 147,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.title.label.products',
'warning' => 'interdril.module.slideshows::field.title.warning.products',
'placeholder' => 'interdril.module.slideshows::field.title.placeholder.products',
'instructions' => 'interdril.module.slideshows::field.title.instructions.products',
],
],
],
[
'id' => 148,
'sort_order' => 144,
'stream_id' => 32,
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
'id' => 148,
'assignment_id' => 148,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.slug.label.products',
'warning' => 'interdril.module.slideshows::field.slug.warning.products',
'placeholder' => 'interdril.module.slideshows::field.slug.placeholder.products',
'instructions' => 'interdril.module.slideshows::field.slug.instructions.products',
],
],
],
[
'id' => 149,
'sort_order' => 145,
'stream_id' => 32,
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
'id' => 149,
'assignment_id' => 149,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.image.label.products',
'warning' => 'interdril.module.slideshows::field.image.warning.products',
'placeholder' => 'interdril.module.slideshows::field.image.placeholder.products',
'instructions' => 'interdril.module.slideshows::field.image.instructions.products',
],
],
],
[
'id' => 150,
'sort_order' => 146,
'stream_id' => 32,
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
'id' => 150,
'assignment_id' => 150,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.url.label.products',
'warning' => 'interdril.module.slideshows::field.url.warning.products',
'placeholder' => 'interdril.module.slideshows::field.url.placeholder.products',
'instructions' => 'interdril.module.slideshows::field.url.instructions.products',
],
],
],
[
'id' => 151,
'sort_order' => 147,
'stream_id' => 32,
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
'id' => 151,
'assignment_id' => 151,
'locale' => 'en',
'label' => 'interdril.module.slideshows::field.publish.label.products',
'warning' => 'interdril.module.slideshows::field.publish.warning.products',
'placeholder' => 'interdril.module.slideshows::field.publish.placeholder.products',
'instructions' => 'interdril.module.slideshows::field.publish.instructions.products',
],
],
],
],
'translations' => [
[
'id' => 32,
'stream_id' => 32,
'locale' => 'en',
'name' => 'interdril.module.slideshows::stream.products.name',
'description' => 'interdril.module.slideshows::stream.products.description',
],
],
];

    
public function image()
{

return $this->getFieldType('image')->getRelation();
}

}

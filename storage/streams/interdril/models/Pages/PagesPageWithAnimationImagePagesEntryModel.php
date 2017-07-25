<?php namespace Anomaly\Streams\Platform\Model\Pages;

use Anomaly\Streams\Platform\Entry\EntryModel;

class PagesPageWithAnimationImagePagesEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'pages_page_with_animation_image_pages';

    protected $titleName = 'id';

    protected $rules = [
'content' => 'required',
'images' => 'required',
'image_class' => '',
];

    protected $fields = [
'content',
'images',
'image_class',
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = ['images'];

    protected $translatedAttributes = ['content'];

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Pages\PagesPageWithAnimationImagePagesEntryTranslationsModel';

    protected $stream = [
'id' => '26',
'namespace' => 'pages',
'slug' => 'page_with_animation_image_pages',
'prefix' => 'pages_',
'title_column' => 'id',
'order_by' => 'id',
'locked' => '0',
'hidden' => '1',
'sortable' => '0',
'searchable' => '0',
'trashable' => '1',
'translatable' => '1',
'config' => 'a:0:{}',
'assignments' => [
[
'id' => 128,
'sort_order' => 1,
'stream_id' => 26,
'field_id' => 41,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 1,
'translatable' => 1,
'field' => [
'id' => '41',
'namespace' => 'pages',
'slug' => 'content',
'type' => 'anomaly.field_type.wysiwyg',
'config' => 'a:0:{}',
'locked' => '0',
'translations' => [
[
'id' => 41,
'field_id' => 41,
'locale' => 'en',
'name' => 'anomaly.module.pages::field.content.name',
'placeholder' => 'anomaly.module.pages::field.content.placeholder',
'warning' => 'anomaly.module.pages::field.content.warning',
'instructions' => 'anomaly.module.pages::field.content.instructions',
],
],
],
'translations' => [
[
'id' => 128,
'assignment_id' => 128,
'locale' => 'en',
'label' => 'Content',
'warning' => 'Please fill a content',
'placeholder' => 'Please fill a content',
'instructions' => 'Please fill a content',
],
],
],
[
'id' => 127,
'sort_order' => 2,
'stream_id' => 26,
'field_id' => 117,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 1,
'translatable' => 0,
'field' => [
'id' => '117',
'namespace' => 'pages',
'slug' => 'images',
'type' => 'anomaly.field_type.files',
'config' => 'a:4:{s:7:"folders";N;s:3:"min";s:1:"1";s:3:"max";s:2:"50";s:4:"mode";s:7:"default";}',
'locked' => '0',
'translations' => [
[
'id' => 117,
'field_id' => 117,
'locale' => 'en',
'name' => 'Images',
'placeholder' => 'Please Upload a Image',
'warning' => 'Please Upload a Image',
'instructions' => 'Please Upload a Image',
],
],
],
'translations' => [
[
'id' => 127,
'assignment_id' => 127,
'locale' => 'en',
'label' => 'Images',
'warning' => 'Please Upload a Image',
'placeholder' => 'Please Upload a Image',
'instructions' => 'Please Upload a Image',
],
],
],
[
'id' => 133,
'sort_order' => 129,
'stream_id' => 26,
'field_id' => 122,
'config' => 'a:1:{i:0;s:6:"a:0:{}";}',
'unique' => 0,
'required' => 0,
'translatable' => 0,
'field' => [
'id' => '122',
'namespace' => 'pages',
'slug' => 'image_class',
'type' => 'anomaly.field_type.text',
'config' => 'a:7:{s:4:"type";s:4:"text";s:4:"mask";N;s:3:"min";s:1:"1";s:3:"max";s:3:"100";s:12:"show_counter";b:0;s:9:"suggested";N;s:13:"default_value";N;}',
'locked' => '0',
'translations' => [
[
'id' => 122,
'field_id' => 122,
'locale' => 'en',
'name' => 'Image Class',
'placeholder' => 'Image Class',
'warning' => 'Image Css Class',
'instructions' => '',
],
],
],
'translations' => [
[
'id' => 133,
'assignment_id' => 133,
'locale' => 'en',
'label' => 'Image Class',
'warning' => 'Image Css Class',
'placeholder' => 'Image Class',
'instructions' => '',
],
],
],
],
'translations' => [
[
'id' => 26,
'stream_id' => 26,
'locale' => 'en',
'name' => 'Page With Animation Image',
'description' => 'Page With Animation Image',
],
],
];

    
public function images()
{

return $this->getFieldType('images')->getRelation();
}

}

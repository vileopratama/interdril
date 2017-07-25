<?php namespace Anomaly\Streams\Platform\Model\Files;

use Anomaly\Streams\Platform\Entry\EntryModel;

class FilesRotaryDrillingEntryModel extends EntryModel
{

    use \Illuminate\Database\Eloquent\SoftDeletes;

    protected $searchable = false;

    protected $table = 'files_rotary_drilling';

    protected $titleName = '';

    protected $rules = [
];

    protected $fields = [
];

    protected $dates = ['created_at', 'updated_at', 'deleted_at'];

    protected $relationships = [];

    

    protected $translationForeignKey = 'entry_id';

    protected $translationModel = 'Anomaly\Streams\Platform\Model\Files\FilesRotaryDrillingEntryTranslationsModel';

    protected $stream = [
'slug' => 'rotary_drilling',
'namespace' => 'files',
'translatable' => '1',
'trashable' => '1',
'locked' => '',
'config' => 'a:0:{}',
'prefix' => 'files_',
'id' => '27',
'assignments' => [
],
'translations' => [
[
'id' => 27,
'stream_id' => 27,
'locale' => 'en',
'name' => 'Rotary Drilling',
'description' => 'Rotary Drilling',
],
],
];

    
}

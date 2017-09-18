<?php
namespace Modular\Models;

class Slide extends \Modular\Model {
	const SortFieldName = 'Sort';
	const Name = 'CarouselBlock';
	const Schema = 'Modular\Models\Block';

	private static $db = [
		self::SortFieldName => 'Int'
	];
	private static $has_one = [
		self::Name => self::Schema
	];
	private static $summary_fields = [
		'Title' => 'Title',
	    'Image.Title' => 'Image Title'
	];

	public function getCMSFields() {
		$fields = parent::getCMSFields();
		$fields->replaceField(self::SortFieldName, new \HiddenField(self::SortFieldName));
		return $fields;
	}
}
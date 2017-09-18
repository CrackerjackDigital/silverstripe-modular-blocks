<?php

namespace Modular\Relationships;

use Modular\GridField\Configs\GridFieldConfig;
use Modular\Models\Slide;

class HasSlides extends HasMany {
	const Name                = 'Slides';
	const Schema              = Slide::class;
	const GridFieldConfigName = GridFieldConfig::class;
}
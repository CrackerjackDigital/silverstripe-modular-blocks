About Modular Blocks Module
===

modular-blocks adds 'blocks' to a page which can then be managed via the CMS so pages layouts can be built at runtime
instead of by editing templates.

Installation
===

```
composer require crackerjackdigital/silverstripe-modular-blocks
```

If the module has not made it to packagist yet then you will have to add the following to 'repositories' section of

__composer.json__

```
	"repositories": [
		{
			"type": "vcs",
			"url": "https://github.com/crackerjackdigital/silverstripe-modular"
		},
		{
			"type": "vcs",
			"url": "https://github.com/crackerjackdigital/silverstripe-modular-blocks"
		},
		{
			"type": "vcs",
			"url": "https://github.com/crackerjackdigital/silverstripe-modular-debug"
		},
		{
			"type": "vcs",
			"url": "https://github.com/crackerjackdigital/silverstripe-modular-fields"
		},
		{
			"type": "vcs",
			"url": "https://github.com/crackerjackdigital/silverstripe-modular-relationships"
		},
		{
			"type": "vcs",
			"url": "https://github.com/crackerjackdigital/silverstripe-modular-types"
		},
	]
```

Then in requirements section:

```
	"require": {
		"crackerjackdigital/silverstripe-modular": "dev-master",
		"crackerjackdigital/silverstripe-modular-blocks": "dev-master",
		"crackerjackdigital/silverstripe-modular-fields": "dev-master",
	}
```

And composer update as normal. Please ignore all modular modules in your vcs config, e.g. for git add to your project
 
__.gitignore__
 
```
/modular*
```

Layout
---

Under the module directory is the following structure:

| Directory | Namespace | Description |
|---|---|---|
| code/blocks/ | Modular\Blocks | Specialised Block classes files |
| code/extensions | Modular\Extensions | Utility extensions |
| code/gridfield/config | Modular\GridField\Configs | Configs for use with GridField for dealing with Blocks |
| code/models | Modular\Models | Models used by blocks, e.g. 'Slide' used by HasSlides relationship | 
| code/relationships | Modular\Relationships | Classes to add a block, blocks and other block related relationships to models |
| code/Block.php | Modular | Base Block class, use this to make your own blocks and have them available to create in the CMS |
| templates/Blocks | n/a | Template files for pre-defined blocks, copy to and modify in your themes directory to customise |


Configuration
===

Once installed you need to add blocks to relevant Page classes, or your base Page class (BasePage in CWP). We suggest 
keeing all modular configuration in a separate file in your app _config directory

__modular.yml__

```

---
Name: app-modular-config
After:
	-   'modular*/*'
---
Page:
	extensions:
		- Modular\Relationships\HasBlocks
		
```

Fields can be added to predefined blocks either by implementing extensions, in config or when creating
your own Block classes derived from the base Modular\Models\Block class or a derived class.

If using modular-fields then any of the available defined fields can be added via the Field derived classes:

__modular.yml__

```
Modular\Models\Block:
	extensions:
		- Modular\Fields\Title
		- Modular\Fields\Synopsis
		- Modular\Fields\Content 		
MyMenuBlock:
	db:
		Title: 'Varchar(255)'
		Synopsis: 'Text'
		Content: 'HTMLText'	
```

Classes derived from Modular\Models\Block will automatically appear in the CMS 'Add Block' dropdown.

Usage
===

Modular blocks has a concept of 'Zones' within a page to which blocks can be added. Blocks are configured
to be able to be added to zones in the CMS as follows:

__blocks.yml__

```
Page:
  blocks_for_zone:
    Header:
      - MyMenuBlock
    Hero:
      - Modular\Blocks\HeroSlideBlock
    Top:
      - MyCustomBlock
      - Modular\Blocks\HeroBlock
      - Modular\Blocks\CallToActionBlock
    Content:
      - AnotherCustomBlock
      - Modular\Blocks\ContentBlock
      - Modular\Blocks\ContentImageLeftBlock
      - Modular\Blocks\ContentImageRightBlock
      - Modular\Blocks\MediaPanelsBlock
      - Modular\Blocks\FullWidthImageBlock
      - Modular\Blocks\VideoBlock
      - Modular\Blocks\FilesBlock
    Bottom:
      - Modular\Blocks\ContentBlock
      - Modular\Blocks\LinksBlock
      - Modular\Blocks\FooterBlock
```

Of course, you could just choose to have one Zone, e.g. 'Main' in which you list all blocks you are using:

__blocks.yml__

```
Page:
  blocks_for_zone:
    Main:	
      - MyMenuBlock
      - AnotherCustomBlock
      - Modular\Blocks\HeroSlideBlock
      - Modular\Blocks\HeroBlock
      - Modular\Blocks\CallToActionBlock
      - Modular\Blocks\ContentBlock
      - Modular\Blocks\ContentImageLeftBlock
      - Modular\Blocks\ContentImageRightBlock
      - Modular\Blocks\MediaPanelsBlock
      - Modular\Blocks\FullWidthImageBlock
      - Modular\Blocks\VideoBlock
      - Modular\Blocks\FilesBlock
      - Modular\Blocks\LinksBlock
      - Modular\Blocks\FooterBlock
```

		
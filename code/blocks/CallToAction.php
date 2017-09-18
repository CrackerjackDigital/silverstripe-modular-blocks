<?php
namespace Modular\Blocks;

use Modular\Fields\InternalLink;
use Modular\Fields\ExternalLink;
use Modular\Behaviours\InternalOrExternalLink;

class CallToAction extends \Modular\Models\Block {
	public function ResolvedLink() {
		if ($this->{InternalOrExternalLink::LinkTypeFieldName} == InternalLink::InternalLinkOption) {

			if ($target = $this->{InternalLink::Name}()) {
				return $target->Link();
            }
		} elseif ($this->{InternalOrExternalLink::LinkTypeFieldName} == ExternalLink::ExternalLinkOption) {
			return $this->{ExternalLink::Name};
		}
	}

}
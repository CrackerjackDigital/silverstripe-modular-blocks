<?php
namespace Modular\Blocks;

use Modular\Behaviours\InternalOrExternalLink;
use Modular\Fields\InternalLink;
use Modular\Fields\ExternalLink;

class CallToAction extends \Modular\Block {
	public function ResolvedLink() {
		if ($this->{InternalOrExternalLink::LinkTypeFieldName} == InternalLink::InternalLinkOption) {

			if ($target = $this->{InternalLink::RelationshipName}()) {
				return $target->Link();
            }
		} elseif ($this->{InternalOrExternalLink::LinkTypeFieldName} == ExternalLink::ExternalLinkOption) {
			return $this->{ExternalLink::SingleFieldName};
		}
	}

}
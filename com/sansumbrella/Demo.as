package com.sansumbrella {

import flash.display.Sprite;

public class Demo extends Sprite {
	
	/**
	*	Demonstrates the KonamiLayer	
	*	
	*/
	
	public function Demo()
	{
		super();
		addChild(new KonamiLayer('bonus/konamilayer.swf'));
	}
	
}

}


package com.sansumbrella {

import flash.display.Sprite;
import com.sansumbrella.utils.KonamiLayer;

[SWF(width="550", height="400", backgroundColor="#FFFFFF", frameRate="60")]

public class Demo extends Sprite {
	
	/**
	*	Demonstrates the KonamiLayer
	*	
	*/
	
	public function Demo()
	{
		super();
		trace("Demo::Demo()");
		addChild(new KonamiLayer('extra/konami.swf'));
	}
	
}

}


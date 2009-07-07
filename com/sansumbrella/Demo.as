package com.sansumbrella {

import flash.display.Sprite;
import flash.display.Bitmap;
import com.sansumbrella.utils.KonamiLayer;

[SWF(width="600", height="400", backgroundColor="#FFFFFF", frameRate="60")]

public class Demo extends Sprite {
	
	/**
	*	Demonstrates the KonamiLayer
	*	
	*/
	
	[Embed(source="../../data/code.png")] private var ImgCode:Class;
	
	public function Demo()
	{
		super();
		//pass in a function or the path to some extra content (swf or image file)
		addChild( new KonamiLayer( "extra/konami.swf") );
		//addChild(new KonamiLayer(konamiFunction));

		var img:Bitmap = new Bitmap( (new ImgCode).bitmapData );
		img.y = 400 - img.height;
		addChild(img);
	}
	
	private function konamiFunction():void
	{
		trace("Demo::konamiFunction()");
	}
}

}


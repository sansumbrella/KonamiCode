package com.sansumbrella {

import flash.display.Sprite;
import flash.display.Bitmap;
import flash.events.Event;
import flash.events.MouseEvent;

[SWF(width="600", height="300", backgroundColor="#FFFFFF", frameRate="60")]

public class ExtraContent extends Sprite {
	
	[Embed(source="../../data/konami.jpg")] private var ImgLogo:Class;
	private var _logo:Bitmap;
	private var _btn:Sprite;
	
	public function ExtraContent()
	{
		super();
		init();
	}
	
	private function init():void
	{
		_logo = new Bitmap((new ImgLogo).bitmapData);
		
		_btn = new Sprite();
		_btn.graphics.beginFill( 0xFF0000, 1.0 );
		_btn.graphics.drawRect( 0, 0, _logo.width, 24 );
		_btn.graphics.endFill();
		_btn.buttonMode = true;
		
		addChild( _btn );
		addChild( _logo );
		_btn.y = _logo.height;
		
		_btn.addEventListener( MouseEvent.CLICK, handleClick );
	}
	
	private function handleClick(e:Event):void
	{
		_logo.alpha = _logo.alpha == 1 ? 0.5 : 1;
	}
	
}

}
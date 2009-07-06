package com.sansumbrella.utils {

import flash.display.Sprite;
import flash.display.Loader;
import flash.net.URLRequest;

public class KonamiLayer extends Sprite {
	
	/**
	*	@author David Wicks
	*	@url http://sansumbrella.com/
	*	
	*	to use:
	*	addChild( new KonamiLayer("pathToKonamiContent") );
	*	
	*	You are free to use this code for any legal, non-malicious purpose so long as you maintain the original attribution and this notice.
	*/
	
	private const 	UP:String,
					DOWN:String,
					LEFT:String,
					RIGHT:String;
	private var _sequence:Array = [ UP, UP, DOWN, DOWN, LEFT, RIGHT, LEFT, RIGHT, 'b','a']; //the key combination necessary to show the content
	private var _contentURL:String;
	private var _content:Loader;
	
	public function KonamiLayer( contentURL:String = "extra/konami.swf" )
	{
		super();
	}
	
}

}


package com.sansumbrella.utils {

import flash.display.Sprite;
import flash.display.Loader;
import flash.net.URLRequest;

import flash.events.KeyboardEvent;
import flash.events.Event;

import flash.ui.Keyboard;

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
	
	private var _sequence:Array = [ Keyboard.UP, Keyboard.UP, Keyboard.DOWN, Keyboard.DOWN, Keyboard.LEFT, Keyboard.RIGHT, Keyboard.LEFT, Keyboard.RIGHT, 'B'.charCodeAt(0), 'A'.charCodeAt(0)]; //the key combination necessary to show the content
	private var _currentIndex:int = 0;
	private var _contentURL:String;
	private var _content:Loader;
	
	public function KonamiLayer( contentURL:String = "extra/konami.swf" )
	{
		super();
		init();
	}
	
	private function init():void
	{
		addEventListener( Event.ADDED_TO_STAGE, setup );
		addEventListener( Event.REMOVED_FROM_STAGE, teardown );
	}
	
	private function setup(e:Event):void
	{
		removeEventListener( Event.ADDED_TO_STAGE, setup );
		stage.addEventListener( KeyboardEvent.KEY_UP, handleKey, false, 0, true );
	}
	
	private function teardown(e:Event):void
	{	//get rid of everything
		stage.removeEventListener( KeyboardEvent.KEY_UP, handleKey );
		_content = null;
	}
	
	private function handleKey( e:KeyboardEvent ):void
	{		
		if( e.keyCode == _sequence[_currentIndex] )
		{
			_currentIndex++;
		} else {
			//they messed up the code
			_currentIndex = 0;
		}
		
		if( _currentIndex == _sequence.length-1 )
		{	//handle the code and stop listening
			doKonamiStuff();
			stage.removeEventListener( KeyboardEvent.KEY_UP, handleKey );
		}
	}
	
	private function doKonamiStuff():void
	{
		trace("KonamiLayer::doKonamiStuff()");
	}
	
}

}


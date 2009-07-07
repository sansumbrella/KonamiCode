package com.sansumbrella.utils {

import flash.display.Sprite;
import flash.display.Loader;
import flash.net.URLRequest;

import flash.events.KeyboardEvent;
import flash.events.Event;

import flash.ui.Keyboard;

public class KonamiLayer extends Loader {
	
	/**
	*	@author David Wicks
	*	@url http://sansumbrella.com/
	*	
	*	to use:
	*	addChild( new KonamiLayer("pathToKonamiContent") );
	*	
	*	You are free to use this code for any legal, non-malicious purpose so long as you maintain the original attribution and this notice.
	*	It adds 676 bytes to your compiled swf (less than 1K), so you might as well throw in some easter eggs to your projects
	*/
	
	private var _sequence:Array = [ Keyboard.UP, Keyboard.UP, Keyboard.DOWN, Keyboard.DOWN, Keyboard.LEFT, Keyboard.RIGHT, Keyboard.LEFT, Keyboard.RIGHT, 'B'.charCodeAt(0), 'A'.charCodeAt(0)]; //the key combination necessary to show the content
	private var _currentIndex:int = 0;
	private var _konamiAction:Object;	//the function to call or the path to content (swf or image file)
	
	public function KonamiLayer( action:Object )
	{
		super();
		_konamiAction = action;
		
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
		if( _konamiAction is Function )
		{
			(_konamiAction as Function)();
		} else if( _konamiAction is String )
		{
			load( new URLRequest( _konamiAction as String ));
		}
	}
	
}

}


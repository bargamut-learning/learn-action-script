package 
{
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.ui.Keyboard;
	import flash.utils.Timer;
	
	public class test extends MovieClip{
		var hello:String;
		var timer:Timer = new Timer(50);
		
		public function test(){
			stage.addEventListener(MouseEvent.MOUSE_MOVE, onFrameLoop, false, 0, true);
			
			timer.addEventListener(TimerEvent.TIMER, onTimerFrameLoop, false, 0, true);
			timer.start();
			
			hello = "Учебное приложение! Для проведения опытов.";
			trace(hello);
			trace(stage.width);
		}
		
		public function onFrameLoop(evt:Event):void{
			cycle.x = mouseX;
			cycle.wheel.rotation = mouseX;
		}
		
		public function onTimerFrameLoop(evt:TimerEvent):void{
			cycle.x += 1;
			cycle.wheel.rotation += 1;
			clock.hand.rotation += 5;
		}
	}
}
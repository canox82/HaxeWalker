package;

import openfl.display.Sprite;
import openfl.events.Event;
import openfl.Lib;


class Main extends Sprite {

	private var HxWalker : Walker;
	
	public function new () {
		
		super ();
		
		HxWalker = new Walker(this.stage.stageWidth/2, this.stage.stageHeight/2);

		this.addEventListener(Event.ENTER_FRAME, loop);
		
	}

	private function loop(e:Event):Void
	{
		HxWalker.step();
		HxWalker.draw();
	}
	
}
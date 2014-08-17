package;
import openfl.display.Sprite;
import openfl.Lib;

class Walker extends Sprite
{
	//public var x:Float;
	//public var y:Float;

	public function new(PosX:Float, PosY:Float)
	{
		super();
		x = PosX;
		y = PosY;
	}

	public function step():Void
	{
		var choice:Int = Math.floor(Math.random()*8);

		switch choice {
			case 0: x--;y--; //topsx
			case 1: y--;     //top
			case 2: x++;y--; //topdx
			case 3: x++;     //dx
			case 4: x++;y++; //downdx
			case 5: y++;     //down
			case 6: x--;y++; //downsx
			case 7: x--;     //sx
			default: trace ("Not possible");
		}
		if (x > Lib.current.stage.stageWidth)
		{
			x=0;
		}
		if (x < 0)
		{
			x = Lib.current.stage.stageWidth;
		}
		if (y > Lib.current.stage.stageHeight)
		{
			y=0;
		}
		if (y < 0)
		{
			y = Lib.current.stage.stageHeight;
		}
	}

	public function draw():Void
	{
		Lib.current.stage.graphics.beginFill(Math.floor(Math.random()*0xFFFFFF),1);
		Lib.current.stage.graphics.drawCircle(x, y, 1);
		Lib.current.stage.graphics.endFill();
	}
}
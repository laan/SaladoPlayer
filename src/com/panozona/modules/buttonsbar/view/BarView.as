/*
Copyright 2011 Marek Standio.

This file is part of SaladoPlayer.

SaladoPlayer is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published
by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version.

SaladoPlayer is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty
of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with SaladoPlayer. If not, see <http://www.gnu.org/licenses/>.
*/
package com.panozona.modules.buttonsbar.view{
	
	import com.panozona.modules.buttonsbar.model.ButtonsBarData;
	import flash.display.Sprite;
	
	public class BarView extends Sprite{
		
		private var _backgroundBar:Sprite;
		private var _buttonsContainer:Sprite;
		private var _buttonsBarData:ButtonsBarData;
		
		public function BarView(buttonsBarData:ButtonsBarData):void {
			_buttonsBarData = buttonsBarData;
			
			_backgroundBar = new Sprite();
			if (_buttonsBarData.bar.visible) {
				mouseEnabled = false;
				_backgroundBar.alpha = _buttonsBarData.bar.alpha;
				_backgroundBar.mouseEnabled = false;
				addChild(_backgroundBar);
			}
			
			_buttonsContainer = new Sprite();
			addChild(_buttonsContainer);
		}
		
		public function get buttonsBarData():ButtonsBarData {
			return _buttonsBarData;
		}
		
		public function get buttonsContainer():Sprite {
			return _buttonsContainer;
		}
		
		public function get backgroundBar():Sprite {
			return _backgroundBar;
		}
	}
}
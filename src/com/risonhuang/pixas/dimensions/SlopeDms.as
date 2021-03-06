package com.risonhuang.pixas.dimensions 
{
	/**
	 * The SlopeDms class represents the dimensions of a slope
	 *
	 * @author	max
	 */
	public class SlopeDms extends AbstractDms
	{
		
		/**
		 * Construct
		 *
		 * @param	_xAxis	[optional]	The x dimension in 22.6 degrees coordinate
		 * @param	_yAxis	[optional]	The y dimension in 22.6 degrees coordinate
		 */		
		public function SlopeDms(_xAxis:uint = 30,_yAxis:uint = 30) 
		{
			super();
			
			xAxis = _xAxis;
			yAxis = _yAxis;
			
			if (xAxis % 2 == 1 || yAxis % 2 == 1)
			{
				throw new Error("x,yAxis must be even number");
			}
			
			// xAxis || yAxis = 4 floodFill could not be applied
			if (xAxis <= 4 || yAxis <=4 )
			{
				throw new Error("dimension is too small");
			}			
		}		
	}
}
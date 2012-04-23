
import mx.transitions.BroadcasterMX;

class mx.transitions.OnEnterFrameBeacon {
	static function init () {
		var gmc = _global.MovieClip;
		if (!_root.__OnEnterFrameBeacon) {
			BroadcasterMX.initialize (gmc);
			var mc = _root.createEmptyMovieClip ("__OnEnterFrameBeacon", 9876);
			mc.onEnterFrame = function () {  _global.MovieClip.broadcastMessage ("onEnterFrame"); };
		}
	}
};

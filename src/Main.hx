import screens.WelcomeScreen;
import haxe.crypto.Sha256;
import haxe.Json;
import haxe.Http;

using StringTools;

class Main {
	static function main() {
		Sys.print("\033[2J\033[H");
		WelcomeScreen.start();
	}
}

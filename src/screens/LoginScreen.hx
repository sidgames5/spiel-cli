package screens;

import haxe.crypto.Sha256;
import haxe.Json;
import models.AuthPacket;
import haxe.Http;

class LoginScreen {
	public static function start() {
		Sys.print("\033[2J\033[H");
		Sys.println("Login to Spiel");
		while (true) {
			prompt();
		}
	}

	private static function prompt() {
		Sys.println("Username: ");
		Sys.println("Password: ");
		Sys.print(" Log In ");
		Sys.print("\033[F\033[10C");
		Sys.print("\033[F\033[10C");
		var uname = Sys.stdin().readLine();
		Sys.print("\033[10C");
		var passwd = Sys.stdin().readLine();
		Sys.print("\033[10C\r");
		Sys.print("[Log In]");
		Sys.stdin().readLine();
		Sys.println("Please wait");
		processInput(uname, passwd);
	}

	private static function processInput(uname:String, passwd:String) {
		var req = new Http("http://localhost:8192");
		var pd:AuthPacket = {
			register: true,
			username: uname,
			passwordHash: Sha256.encode(passwd)
		};
		req.setPostData(Json.stringify(pd));
		req.onData = d -> {
			// TODO: send user to main screen
		};
		req.onError = e -> {
			Sys.print("\033[2J\033[H");
			Sys.println(e);
			prompt();
		};
		req.request(true);
	}
}

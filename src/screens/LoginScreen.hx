package screens;

class LoginScreen {
	public static function start() {
		Sys.println("Login to Spiel");
		while (true) {
			Sys.println("Username: ");
			Sys.print("Password: ");
			Sys.print("\033[F\033[10C");
			var uname = Sys.stdin().readLine();
			Sys.print("\033[10C");
			var passwd = Sys.stdin().readLine();
			Sys.println("Please wait");
		}
	}
}

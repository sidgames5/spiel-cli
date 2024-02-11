package screens;

class WelcomeScreen {
	public static function start() {
		while (true) {
			Sys.println("Welcome to Spiel");
			prompt();
		}
	}

	private static function prompt() {
		Sys.print("Would you like to [L]ogin or [S]ign up?: ");
		var input = Sys.stdin().readLine().toLowerCase();
		if (input == "l") {
			LoginScreen.start();
		} else if (input == "s") {
			SignUpScreen.start();
		} else {
			Sys.print("\033[A\r\033[2K");
			Sys.println("Invalid input");
			prompt();
		}
	}
}

package screens;

class WelcomeScreen {
	public static function start() {
		Sys.print("\033[2J\033[H");
		Sys.println("Welcome to Spiel");
		while (true) {
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

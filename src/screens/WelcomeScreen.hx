package screens;

class WelcomeScreen {
	public static function start() {
		while (true) {
			Sys.println("Welcome to Spiel");
			Sys.print("Would you like to [L]ogin or [S]ign up?: ");
			var input = Sys.stdin().readLine().toLowerCase();
		}
	}
}

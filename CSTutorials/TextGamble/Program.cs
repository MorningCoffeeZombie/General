using System;
using System.Collections.Generic;   // Used for the `List<double>` type

namespace TextGamble {
	class Program {
		static void Main(string[] args){

			// Safety to catch if there are no args
			if(args.Length <= 0){
				Console.WriteLine("Hey...GIMME AN ARGUMENT!");
				Console.WriteLine("Enter `tgall` to just show all odds.");
				Environment.Exit(87);
			}
			
			Random rnd = new Random();
			if(args[0].Equals("roll") || args[0].Equals("tgall")) {
				int intRoll = rnd.Next(1, 101); // Random integer 1-100
				Console.WriteLine($"Random Roll: {intRoll}");
			}

			if(args[0].Equals("dice") || args[0].Equals("tgall")) {
				int intDice = rnd.Next(1, 7);   // Random integer 1-6
				Console.WriteLine($"Random Dice: {intDice}");
			}
			
			if(args[0].Equals("raz") || args[0].Equals("razzle") || args[0].Equals("tgall")) {
				int intRazzle6 = rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7);   // Random integer 1-6
				Console.WriteLine($"Razzle Dazzle - 6 Dice: {intRazzle6}");
				int intRazzle8 = rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7) + rnd.Next(1, 7);   // Random integer 1-6
				Console.WriteLine($"Razzle Dazzle - 8 Dice: {intRazzle8}");
			}
			
			if(args[0].Equals("mult") || args[0].Equals("multi") || args[0].Equals("tgall")) {
				int intMult = rnd.Next(-1, 2);   // Random integer -1-1
				Console.WriteLine($"Random Multiplier: {intMult}");
			}

			if(args[0].Equals("coin") || args[0].Equals("coins") || args[0].Equals("tgall")) {
				int intCoin = rnd.Next(0, 2);   // Random integer 0-1
				if(intCoin == 1){
					Console.WriteLine($"Random Coin: {intCoin} (aka Tails)");
				} else if(intCoin == 0){
					Console.WriteLine($"Random Coin: {intCoin} (aka Heads)");
				} else {
					Console.WriteLine($"Random Coin is broken");
				}
			}
			
			if(args[0].Equals("russian") || args[0].Equals("russianroulette") || args[0].Equals("revolver") || args[0].Equals("rroulette") || args[0].Equals("tgall")) {
				int intRevolver = rnd.Next(1, 7);   // Random integer 1-6
				if(intRevolver == 1){
					Console.WriteLine($"Russian Roulette: {intRevolver} Loading one round, spinning cylinder... BANG!");
				} else {
					Console.WriteLine($"Russian Roulette: {intRevolver} Loading one round, spinning cylinder... *click*");
				}
			}

			var lisCards = new List<string>{ 
				"Ace of Hearts",
				"King of Hearts",
				"Queen of Hearts",
				"Jack of Hearts",
				"Ten of Hearts",
				"Nine of Hearts",
				"Eight of Hearts",
				"Seven of Hearts",
				"Six of Hearts",
				"Five of Hearts",
				"Four of Hearts",
				"Three of Hearts",
				"Two of Hearts",
				"Ace of Clubs",
				"King of Clubs",
				"Queen of Clubs",
				"Jack of Clubs",
				"Ten of Clubs",
				"Nine of Clubs",
				"Eight of Clubs",
				"Seven of Clubs",
				"Six of Clubs",
				"Five of Clubs",
				"Four of Clubs",
				"Three of Clubs",
				"Two of Clubs",
				"Ace of Spades",
				"King of Spades",
				"Queen of Spades",
				"Jack of Spades",
				"Ten of Spades",
				"Nine of Spades",
				"Eight of Spades",
				"Seven of Spades",
				"Six of Spades",
				"Five of Spades",
				"Four of Spades",
				"Three of Spades",
				"Two of Spades",
				"Ace of Diamonds",
				"King of Diamonds",
				"Queen of Diamonds",
				"Jack of Diamonds",
				"Ten of Diamonds",
				"Nine of Diamonds",
				"Eight of Diamonds",
				"Seven of Diamonds",
				"Six of Diamonds",
				"Five of Diamonds",
				"Four of Diamonds",
				"Three of Diamonds",
				"Two of Diamonds"
			};
			if(args[0].Equals("card") || args[0].Equals("cards") || args[0].Equals("tgall")) {
				int intCard = rnd.Next(lisCards.Count);
				Console.WriteLine($"Random Card: {lisCards[intCard]}");
			}
			
			if(args[0].Equals("help")) {
				Console.ForegroundColor = ConsoleColor.Red;
				Console.WriteLine($"COMMAND \t DESCRIPTION");
				Console.WriteLine($"======================");
				Console.ResetColor();	// Reset bold/coloring font
				Console.WriteLine($"\troll \t Generate a random number 1-100.");
				Console.WriteLine($"\tdice \t Generate a random number 1-6.");
				Console.WriteLine($"\traz \t Begin a game of RazzleDazzel by rolling 6 or 8 dice simultaneously.");
				Console.WriteLine($"\tmult \t Generate a random number to be used as a multiplier -1 - 1");
					Console.WriteLine($"\t\t AKA: multi");
				Console.WriteLine($"\tcoin \t Flip a coin - heads or tails.");
					Console.WriteLine($"\t\t AKA: coinss");
				Console.WriteLine($"\trussian \t Begin a game of Russian Roulette with a 6-shot revolver");
					Console.WriteLine($"\t\t AKA: russianroulette, revolver, rroutlette");
				Console.WriteLine($"\tcard \t Draw a card from a standard 52 card deck.");
					Console.WriteLine($"\t\t AKA: cards");
				Console.WriteLine($"\ttgall \t Run all commands simultaneously for testing/demo.");
			}
			
		}
	}
}









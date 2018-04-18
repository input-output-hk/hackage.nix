{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "game-probability";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "";
        url = "";
        synopsis = "Simple probability library for dice rolls and similar simple games of chance";
        description = "A library designed to aid in easily calculating the\nprobability of various outcomes of dice rolls.  The\ncentral types are held in the\n\"Numeric.Probability.Game.Event\" module, the dice are\ndefined in the \"Numeric.Probability.Game.Dice\" module,\nand the functions for calculating probabilities are in\nthe \"Numeric.Probability.Game.Query\" module.  Various\nexamples are scattered throughout the library, but here\nare some more:\n\nEvalulates the chance of a coin toss turning up heads:\n\n> chanceTrue coinToss\n\nShows the chances of each outcome of rolling two six-sided dice, as a textual bar chart:\n\n> show (2*d6)\n\nThe chance of getting an 18 when rolling 3 six-sided dice and rerolling on any total less than 8:\n\n> chancePred (== 18) ((3*d6) `rerollOn` [3..7])\n\nAs a more complex example, this implements my memory/understanding of the original\nWorld of Darkness dice system\n(<http://en.wikipedia.org/wiki/Storytelling_System>).\nYou roll a given number of 10-sided dice, rolling one\nextra for every 10 you score if you are specialised.  The number of 1s on the\noriginal roll are subtracted from the total number of\ndice that equal or exceed the difficulty target:\n\n> successes :: Int -> Int -> Bool -> EventM Int\n> successes target dice specialised\n>   = do initial <- replicateM dice d10\n>        extra <- if specialised\n>                   then replicateM (count (== 10) initial) d10\n>                   else return []\n>        return (count (>= target) (initial ++ extra) - count (== 1) initial)\n>   where\n>     count f xs = length (filter f xs)\n\nIf only all RPGs specified their rules in Haskell!\n\nSee also the blog post on the design of the library: <http://chplib.wordpress.com/2010/08/13/nice-dice-in-haskell/>";
        buildType = "Simple";
      };
      components = {
        game-probability = {
          depends  = [
            hsPkgs.base
            hsPkgs.probability
            hsPkgs.random
          ];
        };
      };
    }
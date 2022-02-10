{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "context-free-art"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "414owen@gmail.com";
      author = "Owen Shepherd";
      homepage = "https://github.com/414owen/context-free-art";
      url = "";
      synopsis = "Generate art from context-free grammars";
      description = "\nCreate art via context free grammar production rules.\n\n== Context free grammar primer\n\nContext free grammars consist of a set of terminal symbols, a set of\nnon-terminal symbols, and production rules that map non-terminals to\nother symbols.\n\nWith a context-free grammar, we can generate strings of terminals that\nconform to the specified language.\n\nOur language will describe graphics.\n\n== Example\n\n> import Art.ContextFree.Probabilistic\n> import Data.List.NonEmpty\n>\n> -- let's define a Production rule\n> a = Circle 1\n>\n> -- this will produce an IO (Maybe Svg) from the blaze-svg package\n> -- to turn it into a string we can use one of the `blaze-svg` renderers\n> graphic1 = render $ Circle 1\n>\n> -- let's create a non-terminal, 'a', which renders a terminal, 'Circle 1'\n> -- and has an 85% chance of rendering itself, placed to its right\n> a = NonTerminal $ (100, Circle 1) :| [(85, b)]\n> b = Mod [Move (2, 0)] a\n\n> import Art.ContextFree.Definite\n> import Data.List.NonEmpty\n>\n> move = Mod [Move (0, -1.8), Scale 0.8]\n>\n> armN :: Int -> Symbol\n> armN 0 = move $ Circle 1\n> armN n = move $ NonTerminal $\n>   Circle 1 :| [Mod [Rotate 10] $ armN (n - 1)]\n>\n> arm :: Symbol\n> arm = armN 20\n>\n> spiral = NonTerminal $\n>   Circle 1 :| [arm, Mod [Rotate 120] arm, Mod [Rotate 240] arm]\n\nThe latter produces this graphic:\n\n<<https://owen.cafe/res/context-free/spiral.svg>>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            ];
          buildable = true;
          };
        };
      };
    }
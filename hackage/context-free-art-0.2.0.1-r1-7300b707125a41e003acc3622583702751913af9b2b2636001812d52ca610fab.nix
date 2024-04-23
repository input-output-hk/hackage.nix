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
      identifier = { name = "context-free-art"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "414owen@gmail.com";
      author = "Owen Shepherd";
      homepage = "https://github.com/414owen/context-free-art";
      url = "";
      synopsis = "Generate art from context-free grammars";
      description = "\nCreate art via context free grammar production rules.\n\n== Context free grammar primer\n\nContext free grammars consist of a set of terminal symbols, a set of\nnon-terminal symbols, and production rules that map non-terminals to\nother symbols.\n\nWith a context-free grammar, we can generate strings of terminals that\nconform to the specified language.\n\nOur language will describe graphics.\n\n== Example\n\n> import Art.ContextFree\n> import Data.List.NonEmpty\n>\n> -- Let's define a Production rule\n> a = Circle 1\n>\n> -- This will produce an IO Svg from the blaze-svg package\n> -- to turn it into a string we can use one of the `blaze-svg` renderers\n> graphic1 = interpret $ Circle 1\n>\n> -- Let's create a non-terminal.\n> -- At every layer, this will have an 85% chance\n> -- of rendering another circle\n> a = Mod [Move (2, 0)] b\n> b = NonTerminal $ (85, c) :| []\n> c = NonTerminal $ (100, Circle 1) :| [(100, a)]";
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
        ];
        buildable = true;
      };
      exes = {
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
          ];
          buildable = true;
        };
      };
    };
  }
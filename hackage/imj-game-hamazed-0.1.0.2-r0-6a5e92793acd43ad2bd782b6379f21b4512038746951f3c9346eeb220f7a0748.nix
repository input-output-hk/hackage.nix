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
      specVersion = "1.10";
      identifier = { name = "imj-game-hamazed"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2017 - 2018 Olivier Sohn";
      maintainer = "olivier.sohn@gmail.com";
      author = "Olivier Sohn";
      homepage = "https://github.com/OlivierSohn/hamazed/blob/master/imj-game-hamazed//README.md";
      url = "";
      synopsis = "A game with flying numbers and 8-bit color animations.";
      description = "In Hamazed, you are a 'BattleShip' pilot surrounded by flying 'Number's.\n\nYour mission is to shoot exactly the 'Number's whose sum will equate the\ncurrent 'Level' 's /target number/.\n\nThe higher the 'Level' (1..12), the more 'Number's are flying around (up-to 16).\nAnd the smaller the 'World' gets.\n\nGood luck !";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."imj-animation" or (errorHandler.buildDepError "imj-animation"))
          (hsPkgs."imj-animation" or (errorHandler.buildDepError "imj-animation"))
          (hsPkgs."imj-base" or (errorHandler.buildDepError "imj-base"))
          (hsPkgs."imj-prelude" or (errorHandler.buildDepError "imj-prelude"))
          ];
        buildable = true;
        };
      exes = {
        "imj-game-hamazed-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imj-game-hamazed" or (errorHandler.buildDepError "imj-game-hamazed"))
            (hsPkgs."imj-prelude" or (errorHandler.buildDepError "imj-prelude"))
            ];
          buildable = true;
          };
        };
      tests = {
        "imj-game-hamazed-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."imj-base" or (errorHandler.buildDepError "imj-base"))
            (hsPkgs."imj-game-hamazed" or (errorHandler.buildDepError "imj-game-hamazed"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
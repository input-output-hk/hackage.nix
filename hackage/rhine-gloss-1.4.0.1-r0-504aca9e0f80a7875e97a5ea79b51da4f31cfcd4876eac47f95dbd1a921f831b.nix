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
    flags = { dev = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "rhine-gloss"; version = "1.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "Gloss backend for Rhine";
      description = "This package provides a simple wrapper for the `gloss` library,\nor rather the function `Graphics.Gloss.play`,\nenabling you to write `gloss` applications as signal functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."automaton" or (errorHandler.buildDepError "automaton"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."monad-schedule" or (errorHandler.buildDepError "monad-schedule"))
          (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "rhine-gloss-gears" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rhine-gloss" or (errorHandler.buildDepError "rhine-gloss"))
          ];
          buildable = true;
        };
      };
    };
  }
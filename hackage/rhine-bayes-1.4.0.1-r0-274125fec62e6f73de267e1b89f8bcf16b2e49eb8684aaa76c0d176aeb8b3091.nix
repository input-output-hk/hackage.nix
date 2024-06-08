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
      identifier = { name = "rhine-bayes"; version = "1.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "monad-bayes backend for Rhine";
      description = "This package provides a backend to the @monad-bayes@ library,\nenabling you to write stochastic processes as signal functions,\nand performing online machine learning on them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."automaton" or (errorHandler.buildDepError "automaton"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
          (hsPkgs."monad-bayes" or (errorHandler.buildDepError "monad-bayes"))
          (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "rhine-bayes-gloss" = {
          depends = [
            (hsPkgs."automaton" or (errorHandler.buildDepError "automaton"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
            (hsPkgs."mmorph" or (errorHandler.buildDepError "mmorph"))
            (hsPkgs."monad-bayes" or (errorHandler.buildDepError "monad-bayes"))
            (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
            (hsPkgs."rhine-bayes" or (errorHandler.buildDepError "rhine-bayes"))
            (hsPkgs."rhine-gloss" or (errorHandler.buildDepError "rhine-gloss"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }
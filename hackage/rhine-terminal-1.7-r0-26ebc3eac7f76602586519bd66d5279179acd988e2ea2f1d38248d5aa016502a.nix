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
      specVersion = "2.2";
      identifier = { name = "rhine-terminal"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de, jun@iilab.org";
      author = "Manuel Bärenz, Jun Matsushita";
      homepage = "";
      url = "";
      synopsis = "Terminal backend for Rhine";
      description = "This package provides an example of a `terminal` based program using rhine.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."monad-schedule" or (errorHandler.buildDepError "monad-schedule"))
          (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
          (hsPkgs."terminal" or (errorHandler.buildDepError "terminal"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "rhine-terminal-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."monad-schedule" or (errorHandler.buildDepError "monad-schedule"))
            (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
            (hsPkgs."terminal" or (errorHandler.buildDepError "terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."rhine-terminal" or (errorHandler.buildDepError "rhine-terminal"))
          ];
          buildable = true;
        };
      };
      tests = {
        "rhine-terminal-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."monad-schedule" or (errorHandler.buildDepError "monad-schedule"))
            (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
            (hsPkgs."terminal" or (errorHandler.buildDepError "terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."rhine-terminal" or (errorHandler.buildDepError "rhine-terminal"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          buildable = true;
        };
      };
    };
  }
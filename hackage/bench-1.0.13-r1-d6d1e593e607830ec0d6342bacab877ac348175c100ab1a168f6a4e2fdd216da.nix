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
      identifier = { name = "bench"; version = "1.0.13"; };
      license = "BSD-3-Clause";
      copyright = "2016 Gabriella Gonzalez";
      maintainer = "GenuineGabriella@gmail.com";
      author = "Gabriella Gonzalez";
      homepage = "https://github.com/Gabriella439/bench";
      url = "";
      synopsis = "Command-line benchmark tool";
      description = "Think of this as a more powerful alternative to the @time@\ncommand.  Use this command-line tool to benchmark a command\nusing Haskell's @criterion@ library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          ];
          buildable = true;
        };
      };
    };
  }
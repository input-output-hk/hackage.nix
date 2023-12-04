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
      identifier = { name = "currycarbon"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "clemens@nevrome.de";
      author = "Clemens Schmid";
      homepage = "https://github.com/nevrome/currycarbon";
      url = "";
      synopsis = "A package for simple, fast radiocarbon calibration";
      description = "Radiocarbon calibration with the intercept method optimised for fast calibration of many dates.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "currycarbon" = {
          depends = [
            (hsPkgs."currycarbon" or (errorHandler.buildDepError "currycarbon"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."currycarbon" or (errorHandler.buildDepError "currycarbon"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }
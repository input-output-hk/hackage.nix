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
      identifier = { name = "clac"; version = "0.3.0"; };
      license = "GPL-3.0-only";
      copyright = "Alexander Berntsen 2015";
      maintainer = "alexander@plaimi.net";
      author = "Alexander Berntsen";
      homepage = "";
      url = "";
      synopsis = "Simple CLI RPN calculator";
      description = "Simple CLI RPN calculator.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "clac" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."plailude" or (errorHandler.buildDepError "plailude"))
            (hsPkgs."pretty-tree" or (errorHandler.buildDepError "pretty-tree"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }
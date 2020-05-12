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
      identifier = { name = "gen-passwd"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "anfelor@posteo.de";
      author = "Anton Felix Lorenzen";
      homepage = "https://github.com/anfelor/gen-passwd#readme";
      url = "";
      synopsis = "Create wordlist-based passwords easily";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gen-passwd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }
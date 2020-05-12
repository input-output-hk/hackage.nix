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
      identifier = { name = "cautious-gen"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Nick Van den Broeck";
      maintainer = "nick.van.den.broeck666@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/Nickske666/cautious#readme";
      url = "";
      synopsis = "";
      description = "GenValid instances for Cautious and CautiousT";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cautious" or (errorHandler.buildDepError "cautious"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          ];
        buildable = true;
        };
      tests = {
        "cautious-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cautious" or (errorHandler.buildDepError "cautious"))
            (hsPkgs."cautious-gen" or (errorHandler.buildDepError "cautious-gen"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."genvalidity-hspec-aeson" or (errorHandler.buildDepError "genvalidity-hspec-aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
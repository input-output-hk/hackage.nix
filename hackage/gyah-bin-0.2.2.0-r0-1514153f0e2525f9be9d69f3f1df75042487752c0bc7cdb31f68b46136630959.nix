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
      identifier = { name = "gyah-bin"; version = "0.2.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "qinka@live.com";
      author = "Qinka";
      homepage = "";
      url = "";
      synopsis = "A binary version of GiveYouAHead";
      description = "GiveYouAHead  binary";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gyah" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GiveYouAHead" or (errorHandler.buildDepError "GiveYouAHead"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          ];
          buildable = true;
        };
      };
    };
  }
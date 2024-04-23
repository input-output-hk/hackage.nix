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
      identifier = { name = "leapseconds"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Ashley Yakeley";
      maintainer = "ashley@semantic.org";
      author = "Ashley Yakeley";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Interpretation of leap second files.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."leapseconds" or (errorHandler.buildDepError "leapseconds"))
          ];
          buildable = true;
        };
      };
    };
  }
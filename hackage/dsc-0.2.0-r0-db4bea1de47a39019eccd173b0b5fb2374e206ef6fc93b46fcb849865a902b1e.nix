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
      identifier = { name = "dsc"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Kenny Shen <kenny@machinesung.com>";
      author = "";
      homepage = "https://github.com/qoelet/dsc#readme";
      url = "";
      synopsis = "Helper functions for setting up Double Submit Cookie defense for forms";
      description = "See README at <https://github.com/qoelet/dsc#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."SimpleAES" or (errorHandler.buildDepError "SimpleAES"))
          (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."SimpleAES" or (errorHandler.buildDepError "SimpleAES"))
            (hsPkgs."string-conversions" or (errorHandler.buildDepError "string-conversions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }
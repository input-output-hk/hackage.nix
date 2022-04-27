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
      specVersion = "1.12";
      identifier = { name = "validity-case-insensitive"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for case-insensitive";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          ];
        buildable = true;
        };
      tests = {
        "validity-case-insensitive-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
            (hsPkgs."validity-case-insensitive" or (errorHandler.buildDepError "validity-case-insensitive"))
            ];
          buildable = true;
          };
        };
      };
    }
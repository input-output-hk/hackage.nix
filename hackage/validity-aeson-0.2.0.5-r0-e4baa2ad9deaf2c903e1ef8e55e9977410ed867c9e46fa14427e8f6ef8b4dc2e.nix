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
      identifier = { name = "validity-aeson"; version = "0.2.0.5"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2021 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Validity instances for aeson";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
          (hsPkgs."validity-scientific" or (errorHandler.buildDepError "validity-scientific"))
          (hsPkgs."validity-text" or (errorHandler.buildDepError "validity-text"))
          (hsPkgs."validity-unordered-containers" or (errorHandler.buildDepError "validity-unordered-containers"))
          (hsPkgs."validity-vector" or (errorHandler.buildDepError "validity-vector"))
          ];
        buildable = true;
        };
      tests = {
        "validity-aeson-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
            (hsPkgs."validity-aeson" or (errorHandler.buildDepError "validity-aeson"))
            ];
          buildable = true;
          };
        };
      };
    }
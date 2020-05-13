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
      identifier = { name = "genvalidity-path"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "GenValidity support for Path";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."validity-path" or (errorHandler.buildDepError "validity-path"))
          (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          ];
        buildable = true;
        };
      tests = {
        "genvalidity-path-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity-path" or (errorHandler.buildDepError "genvalidity-path"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."genvalidity-hspec" or (errorHandler.buildDepError "genvalidity-hspec"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "test-framework-doctest"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sakariij@gmail.com";
      author = "Sakari Jokinen";
      homepage = "";
      url = "";
      synopsis = "Test.Framework wrapper for DocTest";
      description = "Test.Framework wrapper for DocTest";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
          (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-doctest" or (errorHandler.buildDepError "test-framework-doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
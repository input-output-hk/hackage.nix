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
      specVersion = "1.8";
      identifier = { name = "opentheory-parser"; version = "1.156"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Stream parsers";
      description = "Stream parsers - this package was automatically generated from the\nOpenTheory package parser-1.156";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
          ];
        buildable = true;
        };
      tests = {
        "opentheory-parser-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
            ];
          buildable = true;
          };
        };
      };
    }
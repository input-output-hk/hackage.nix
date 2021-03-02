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
      identifier = { name = "opentheory-unicode"; version = "1.140"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "http://opentheory.gilith.com/?pkg=char";
      url = "";
      synopsis = "Unicode characters";
      description = "Unicode characters - this package was automatically generated from the\nOpenTheory package char-1.140";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
          (hsPkgs."opentheory-byte" or (errorHandler.buildDepError "opentheory-byte"))
          (hsPkgs."opentheory-bits" or (errorHandler.buildDepError "opentheory-bits"))
          (hsPkgs."opentheory-parser" or (errorHandler.buildDepError "opentheory-parser"))
          (hsPkgs."opentheory-probability" or (errorHandler.buildDepError "opentheory-probability"))
          ];
        buildable = true;
        };
      tests = {
        "opentheory-unicode-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
            (hsPkgs."opentheory-byte" or (errorHandler.buildDepError "opentheory-byte"))
            (hsPkgs."opentheory-bits" or (errorHandler.buildDepError "opentheory-bits"))
            (hsPkgs."opentheory-parser" or (errorHandler.buildDepError "opentheory-parser"))
            (hsPkgs."opentheory-probability" or (errorHandler.buildDepError "opentheory-probability"))
            ];
          buildable = true;
          };
        };
      };
    }
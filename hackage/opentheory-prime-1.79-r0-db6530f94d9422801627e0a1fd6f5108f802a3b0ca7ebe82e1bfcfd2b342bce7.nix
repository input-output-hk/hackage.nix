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
      identifier = { name = "opentheory-prime"; version = "1.79"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Leslie-Hurd <joe@gilith.com>";
      author = "Joe Leslie-Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Prime natural numbers";
      description = "Prime natural numbers - this package was automatically generated from the\nOpenTheory package natural-prime-1.79";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
          (hsPkgs."opentheory-divides" or (errorHandler.buildDepError "opentheory-divides"))
          (hsPkgs."opentheory-stream" or (errorHandler.buildDepError "opentheory-stream"))
        ];
        buildable = true;
      };
      exes = {
        "opentheory-prime-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
            (hsPkgs."opentheory-divides" or (errorHandler.buildDepError "opentheory-divides"))
            (hsPkgs."opentheory-stream" or (errorHandler.buildDepError "opentheory-stream"))
          ];
          buildable = true;
        };
      };
    };
  }
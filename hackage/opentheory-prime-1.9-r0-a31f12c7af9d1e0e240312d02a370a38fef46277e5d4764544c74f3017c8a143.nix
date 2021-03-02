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
      identifier = { name = "opentheory-prime"; version = "1.9"; };
      license = "MIT";
      copyright = "";
      maintainer = "Joe Hurd <joe@gilith.com>";
      author = "Joe Hurd <joe@gilith.com>";
      homepage = "";
      url = "";
      synopsis = "Prime numbers";
      description = "Prime numbers\nAutomatically generated from the opentheory package haskell-prime-1.9";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
          (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
          ];
        buildable = true;
        };
      exes = {
        "opentheory-prime-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."opentheory-primitive" or (errorHandler.buildDepError "opentheory-primitive"))
            (hsPkgs."opentheory" or (errorHandler.buildDepError "opentheory"))
            ];
          buildable = true;
          };
        };
      };
    }
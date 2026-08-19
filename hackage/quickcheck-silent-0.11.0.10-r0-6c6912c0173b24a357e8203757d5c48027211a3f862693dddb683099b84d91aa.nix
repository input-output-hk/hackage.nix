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
      specVersion = "3.6";
      identifier = { name = "quickcheck-silent"; version = "0.11.0.10"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2026 SPISE MISU ApS";
      maintainer = "SPISE MISU <mail+hackage@spisemisu.com>";
      author = "SPISE MISU";
      homepage = "";
      url = "";
      synopsis = "Testing with QuickCheck in silence";
      description = "Testing with QuickCheck in silence. For more info see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }
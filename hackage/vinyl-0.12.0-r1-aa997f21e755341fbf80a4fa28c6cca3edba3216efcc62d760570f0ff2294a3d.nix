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
      identifier = { name = "vinyl"; version = "0.12.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "acowley@gmail.com";
      author = "Jonathan Sterling";
      homepage = "";
      url = "";
      synopsis = "Extensible Records";
      description = "Extensible records for Haskell with lenses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          buildable = true;
          };
        "aeson" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "storable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            ];
          buildable = true;
          };
        "equality" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          buildable = true;
          };
        "accessors" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            ];
          buildable = true;
          };
        "asa" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          buildable = true;
          };
        };
      };
    }
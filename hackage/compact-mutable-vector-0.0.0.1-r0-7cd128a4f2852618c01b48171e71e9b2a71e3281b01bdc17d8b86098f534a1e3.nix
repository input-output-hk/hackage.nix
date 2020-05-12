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
      identifier = { name = "compact-mutable-vector"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rightfold <rightfold@gmail.com>";
      author = "rightfold";
      homepage = "";
      url = "";
      synopsis = "Mutable vector with different GC characteristics";
      description = "Library for avoiding excessive mutable array traversals by the garbage\ncollector when you use compact regions for your elements.\n\nSee Haddock for more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compact" or (errorHandler.buildDepError "compact"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."compact" or (errorHandler.buildDepError "compact"))
            (hsPkgs."compact-mutable-vector" or (errorHandler.buildDepError "compact-mutable-vector"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
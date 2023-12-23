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
      specVersion = "2.2";
      identifier = { name = "comfort-array-shape"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://hub.darcs.net/thielema/comfort-array-shape/";
      url = "";
      synopsis = "Additional shape types for the comfort-array package";
      description = "Some extra array shape types\nadditional to the ones in the @comfort-array@ package.\nThese require some more package dependencies\nand use type-encoded natural numbers.\n\n* @Static.ZeroBased@:\nLike @Shape.ZeroBased@ but with type-encoded number as size.\n\n* @Simplex@:\nSimplices of any dimension, where the dimension is encoded in the type.\nOnly a private module for demonstration.\nProduction-ready implementation in @comfort-array@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
          (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
          (hsPkgs."fixed-length" or (errorHandler.buildDepError "fixed-length"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      sublibs = {
        "experimental" = {
          depends = [
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."fixed-length" or (errorHandler.buildDepError "fixed-length"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "comfort-array-shape-test" = {
          depends = [
            (hsPkgs."comfort-array-shape".components.sublibs.experimental or (errorHandler.buildDepError "comfort-array-shape:experimental"))
            (hsPkgs."comfort-array-shape" or (errorHandler.buildDepError "comfort-array-shape"))
            (hsPkgs."comfort-array" or (errorHandler.buildDepError "comfort-array"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."fixed-length" or (errorHandler.buildDepError "fixed-length"))
            (hsPkgs."tfp" or (errorHandler.buildDepError "tfp"))
            (hsPkgs."ChasingBottoms" or (errorHandler.buildDepError "ChasingBottoms"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }
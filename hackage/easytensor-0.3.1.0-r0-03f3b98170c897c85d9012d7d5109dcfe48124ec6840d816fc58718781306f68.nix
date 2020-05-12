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
    flags = { unsafeindices = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "easytensor"; version = "0.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/easytensor#readme";
      url = "";
      synopsis = "Pure, type-indexed haskell vector, matrix, and tensor library.";
      description = "Pure, type-indexed haskell vector, matrix, and tensor library.\nFeatures dimensionality type-checking for all operations.\nGeneric n-dimensional versions are implemented using low-level prim ops.\nAllows ad-hoc replacement with fixed low-dimensionality vectors and matrices without changing user interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
          ] ++ (pkgs.lib).optional (compiler.isGhcjs && true) (hsPkgs."ghcjs-base" or (errorHandler.buildDepError "ghcjs-base"));
        buildable = true;
        };
      tests = {
        "et-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."easytensor" or (errorHandler.buildDepError "easytensor"))
            (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "et-bench-misc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."easytensor" or (errorHandler.buildDepError "easytensor"))
            (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
            ];
          buildable = true;
          };
        "et-bench-spfolds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."easytensor" or (errorHandler.buildDepError "easytensor"))
            (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "3.0";
      identifier = { name = "variety"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "nbos@nbos.ca";
      author = "nbos";
      homepage = "https://github.com/nbos/variety";
      url = "";
      synopsis = "integer arithmetic codes";
      description = "The\n       [Variety](https://hackage-content.haskell.org/package/variety/docs/Codec-Arithmetic-Variety.html)\n       module provides functions to optimally encode and\n       decode sequences of value-base pairs assuming\n       uniform probability.\n\n       If codes get too large and slow to process,\n       [Variety.Bounded](https://hackage-content.haskell.org/package/variety/docs/Codec-Arithmetic-Variety-Bounded.html)\n       provides similar interface with a precision\n       parameter at small cost to code length.\n\n       The\n       [Combinatorics](https://hackage-content.haskell.org/package/variety/docs/Codec-Arithmetic-Combinatorics.html)\n       module provides functions to optimally encode and\n       decode common combinatorial objects through ranking\n       and unranking.\n\n       The\n       [Elias](https://hackage-content.haskell.org/package/variety/docs/Codec-Elias.html)\n       module provides entirely non-parametric encoding and\n       decoding of positive integers. The usual definition\n       doesn't allow for an encoding of 0, so a mapping is\n       baked into the functions in\n       [Elias.Natural](https://hackage-content.haskell.org/package/variety/docs/Codec-Elias-Natural.html)\n       that shifts the number line by 1.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exact-combinatorics" or (errorHandler.buildDepError "exact-combinatorics"))
        ];
        buildable = true;
      };
      tests = {
        "variety-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."variety" or (errorHandler.buildDepError "variety"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }
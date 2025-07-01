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
    flags = {
      trace-wrappers = false;
      nonportable-simd = false;
      pedantic-c-warnings = false;
      default-show-instances = false;
    };
    package = {
      specVersion = "3.0";
      identifier = { name = "ox-arrays"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2025 Tom Smeding, Mikolaj Konarski";
      maintainer = "Tom Smeding <xhackage@tomsmeding.com>";
      author = "Tom Smeding, Mikolaj Konarski";
      homepage = "";
      url = "";
      synopsis = "An efficient CPU-based multidimensional array (tensor) library";
      description = "An efficient and richly typed CPU-based multidimensional array (tensor)\nlibrary built upon the optimized tensor representation (strides list)\nimplemented in the orthotope package. See the README.\n\nIf you use this package: let me know (e.g. via email) if you find it useful!\nBoth positive feedback (keep this!) and negative feedback (I needed this but\nox-arrays doesn't provide it) is welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."ox-arrays".components.sublibs.strided-array-ops or (errorHandler.buildDepError "ox-arrays:strided-array-ops"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."orthotope" or (errorHandler.buildDepError "orthotope"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (flags.trace-wrappers) (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"));
        buildable = true;
      };
      sublibs = {
        "strided-array-ops" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."ox-arrays" or (errorHandler.buildDepError "ox-arrays"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."orthotope" or (errorHandler.buildDepError "orthotope"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "example" = {
          depends = [
            (hsPkgs."ox-arrays" or (errorHandler.buildDepError "ox-arrays"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."ox-arrays" or (errorHandler.buildDepError "ox-arrays"))
            (hsPkgs."ox-arrays".components.sublibs.strided-array-ops or (errorHandler.buildDepError "ox-arrays:strided-array-ops"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."orthotope" or (errorHandler.buildDepError "orthotope"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }
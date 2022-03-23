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
      identifier = { name = "optics"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "optics@well-typed.com";
      author = "Adam Gundry, Andres Löh, Andrzej Rybczak, Oleg Grenrus";
      homepage = "";
      url = "";
      synopsis = "Optics as an abstract interface";
      description = "This package makes it possible to define and use Lenses, Traversals, Prisms\nand other optics, using an abstract interface. See the main module \"Optics\"\nfor the documentation.\n\nThis is the \"batteries-included\" variant with many dependencies; see the\n@<https://hackage.haskell.org/package/optics-core optics-core>@ package and\nother @optics-*@ dependencies if you need a more limited dependency footprint.\n\nNote: Hackage does not yet display documentation for reexported-modules,\nbut you can start from the \"Optics\" module documentation or see the module\nlist in @<https://hackage.haskell.org/package/optics-core optics-core>@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."optics-extra" or (errorHandler.buildDepError "optics-extra"))
          (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "optics-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."indexed-profunctors" or (errorHandler.buildDepError "indexed-profunctors"))
            (hsPkgs."inspection-testing" or (errorHandler.buildDepError "inspection-testing"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      benchmarks = {
        "folds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        "traversals" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optics" or (errorHandler.buildDepError "optics"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }
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
    flags = { cuda = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch-indef"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Core Hasktorch abstractions wrapping FFI bindings";
      description = "The hasktorch-indef package constitutes the main user API for hasktorch. It uses backpack signatures to generically glue low-level FFI bindings to a high-level interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
          (hsPkgs."hasktorch-signatures" or (errorHandler.buildDepError "hasktorch-signatures"))
          (hsPkgs."hasktorch-signatures-support" or (errorHandler.buildDepError "hasktorch-signatures-support"))
          (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
          (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
          (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ (pkgs.lib).optionals (flags.cuda) [
          (hsPkgs."hasktorch-types-thc" or (errorHandler.buildDepError "hasktorch-types-thc"))
          (hsPkgs."cuda" or (errorHandler.buildDepError "cuda"))
          ];
        buildable = true;
        };
      sublibs = {
        "hasktorch-indef-floating" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-indef" or (errorHandler.buildDepError "hasktorch-indef"))
            (hsPkgs."hasktorch-signatures-partial" or (errorHandler.buildDepError "hasktorch-signatures-partial"))
            ];
          buildable = true;
          };
        };
      tests = {
        "spec-double-th" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."hasktorch-indef".components.sublibs.hasktorch-indef-floating or (errorHandler.buildDepError "hasktorch-indef:hasktorch-indef-floating"))
            (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
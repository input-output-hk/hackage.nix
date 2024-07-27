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
    flags = { half = false; lite = false; float = false; with_nn = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch-ffi-thc"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Bindings to Cutorch";
      description = "Cutorch (and THCUNN) FFI bindings for GPU-based tensors and neural networks in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
          (hsPkgs."hasktorch-types-thc" or (errorHandler.buildDepError "hasktorch-types-thc"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [ (pkgs."ATen" or (errorHandler.sysDepError "ATen")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hasktorch-ffi-tests" or (errorHandler.buildDepError "hasktorch-ffi-tests"))
            (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-ffi-thc" or (errorHandler.buildDepError "hasktorch-ffi-thc"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."hasktorch-types-thc" or (errorHandler.buildDepError "hasktorch-types-thc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
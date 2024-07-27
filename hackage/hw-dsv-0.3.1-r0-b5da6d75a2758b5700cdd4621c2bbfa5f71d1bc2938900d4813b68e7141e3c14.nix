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
    flags = { avx2 = false; bmi2 = false; sse42 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-dsv"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-dsv#readme";
      url = "";
      synopsis = "Unbelievably fast streaming DSV file parser";
      description = "Please see the README on Github at <https://github.com/haskell-works/hw-dsv#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          (hsPkgs."hw-simd" or (errorHandler.buildDepError "hw-simd"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "hw-dsv" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-simd" or (errorHandler.buildDepError "hw-simd"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hw-dsv" or (errorHandler.buildDepError "hw-dsv"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hw-dsv-space" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-simd" or (errorHandler.buildDepError "hw-simd"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."hw-dsv" or (errorHandler.buildDepError "hw-dsv"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = true;
        };
        "hw-dsv-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-simd" or (errorHandler.buildDepError "hw-simd"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hw-dsv" or (errorHandler.buildDepError "hw-dsv"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bits-extra" or (errorHandler.buildDepError "bits-extra"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-simd" or (errorHandler.buildDepError "hw-simd"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hw-dsv" or (errorHandler.buildDepError "hw-dsv"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0.1")) [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = true;
        };
      };
    };
  }
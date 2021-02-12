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
      specVersion = "2.2";
      identifier = { name = "hw-json-simd"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-json-simd#readme";
      url = "";
      synopsis = "SIMD-based JSON semi-indexer";
      description = "Please see the README on GitHub at <https://github.com/haskell-works/hw-json-simd#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "hw-json-simd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hw-json-simd" or (errorHandler.buildDepError "hw-json-simd"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      tests = {
        "hw-json-simd-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."hw-json-simd" or (errorHandler.buildDepError "hw-json-simd"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0.1")) (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
          buildable = true;
          };
        };
      };
    }
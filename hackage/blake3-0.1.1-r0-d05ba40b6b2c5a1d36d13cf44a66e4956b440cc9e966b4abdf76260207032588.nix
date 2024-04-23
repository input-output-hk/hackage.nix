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
    flags = { avx512 = true; avx2 = true; sse41 = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "blake3"; version = "0.1.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) Renzo Carbonara 2020";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/hs-blake3";
      url = "";
      synopsis = "BLAKE3 hashing algorithm";
      description = "Bindings to the official fast BLAKE3 implementations in assembly\nand C, with support for AVX-512, AVX2 and SSE 4.1.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."blake3" or (errorHandler.buildDepError "blake3"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }
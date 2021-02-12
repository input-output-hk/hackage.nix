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
      specVersion = "1.10";
      identifier = { name = "mcl"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 IOHK";
      maintainer = "andrzej@well-typed.com";
      author = "Andrzej Rybczak";
      homepage = "";
      url = "";
      synopsis = "Bindings to mcl, a generic and fast pairing-based cryptography library";
      description = "Base library: https://github.com/herumi/mcl";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ];
        libs = [
          (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
          (pkgs."gmpxx" or (errorHandler.sysDepError "gmpxx"))
          (pkgs."mcl" or (errorHandler.sysDepError "mcl"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."mcl" or (errorHandler.buildDepError "mcl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."mcl" or (errorHandler.buildDepError "mcl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
            ];
          buildable = true;
          };
        };
      };
    }
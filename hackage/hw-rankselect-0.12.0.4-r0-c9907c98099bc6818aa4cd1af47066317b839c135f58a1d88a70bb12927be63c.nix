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
    flags = { bmi2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hw-rankselect"; version = "0.12.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2016 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-rankselect#readme";
      url = "";
      synopsis = "Rank-select";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hw-balancedparens" or (errorHandler.buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
          (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
          ];
        buildable = true;
        };
      exes = {
        "hw-rankselect" = {
          depends = [
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hw-rankselect-test" = {
          depends = [
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-hedgehog" or (errorHandler.buildDepError "hw-hedgehog"))
            (hsPkgs."hw-hspec-hedgehog" or (errorHandler.buildDepError "hw-hspec-hedgehog"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hw-bits" or (errorHandler.buildDepError "hw-bits"))
            (hsPkgs."hw-prim" or (errorHandler.buildDepError "hw-prim"))
            (hsPkgs."hw-rankselect" or (errorHandler.buildDepError "hw-rankselect"))
            (hsPkgs."hw-rankselect-base" or (errorHandler.buildDepError "hw-rankselect-base"))
            (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            ];
          buildable = true;
          };
        };
      };
    }
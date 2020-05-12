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
      identifier = { name = "rawr"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 PkmX";
      maintainer = "pkmx.tw@gmail.com";
      author = "PkmX";
      homepage = "https://github.com/pkmx/rawr";
      url = "";
      synopsis = "Anonymous extensible records";
      description = "This library provides anonymous extensible records using GHC 8.0 features, with the following goals/features:\n\n* The syntax should be very close to that of Haskell's record system.\n\n* The library should be simple to use and requires no extra boilerplate to setup.\n\n* There should be minimal runtime overhead and memory footprint.\n\n* The library does not require @TemplateHaskell@ to use.\n\n* It should produce good error messages.\n\n* Minimal dependencies. Currently, it only depends on packages that comes with GHC.\n\nSee @<https://hackage.haskell.org/package/rawr/docs/Data-Rawr.html Data.Rawr>@ for a tutorial of this library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "datasize" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."rawr" or (errorHandler.buildDepError "rawr"))
            (hsPkgs."ghc-datasize" or (errorHandler.buildDepError "ghc-datasize"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "perf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."rawr" or (errorHandler.buildDepError "rawr"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }
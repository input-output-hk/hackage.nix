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
      specVersion = "1.8";
      identifier = { name = "IORefCAS"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@gmail.com, rrnewton@gmail.com";
      author = "Adam C. Foltzer, Ryan Newton";
      homepage = "https://github.com/rrnewton/haskell-lockfree-queue/wiki";
      url = "";
      synopsis = "Atomic compare and swap for IORefs and STRefs.";
      description = "After GHC 7.2 a new `casMutVar#` primop became available, but was\nnot yet exposed in Data.IORef.  This package fills that gap until\nsuch a time as Data.IORef obsoletes it.\n\nFurther, in addition to exposing native Haskell CAS operations, this\npackage contains \\\"mockups\\\" that imititate the same functionality\nusing either atomicModifyIORef and unsafe pointer equality (in\n@Data.CAS.Fake@) or using foreign functions (@Data.CAS.Foreign@).\nThese alternatives are useful for debugging.\n\nNote that the foreign option does not operate on IORefs and so is\ndirectly interchangeable with `Data.CAS` and `Data.CAS.Fake` only if\nthe interface in `Data.CAS.Class` is used.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."bits-atomic" or (errorHandler.buildDepError "bits-atomic"))
          ];
        buildable = true;
        };
      tests = {
        "test-IORefCAS" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bits-atomic" or (errorHandler.buildDepError "bits-atomic"))
            ];
          buildable = true;
          };
        };
      };
    }
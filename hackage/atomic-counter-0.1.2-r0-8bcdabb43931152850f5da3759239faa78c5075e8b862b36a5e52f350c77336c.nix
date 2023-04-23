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
    flags = { dev = false; no-cmm = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "atomic-counter"; version = "0.1.2"; };
      license = "Apache-2.0";
      copyright = "(c) Sergey Vinokurov 2022";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/atomic-counter";
      url = "";
      synopsis = "Mutable counters that can be modified with atomic operatinos";
      description = "This package defines Counter type that can be safely modified\nconcurrently from multiple threads. The type supports only few\noperations, namely read, write, cas (compare and swap), add,\nsubtract and a few bitwise ones like or, and xor.\n\nMost common use case is having a shared counter that multiple\nthreads increment. Another potential use case is lightweight locks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      sublibs = {
        "test-utils" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."atomic-counter" or (errorHandler.buildDepError "atomic-counter"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."atomic-counter".components.sublibs.test-utils or (errorHandler.buildDepError "atomic-counter:test-utils"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."atomic-counter" or (errorHandler.buildDepError "atomic-counter"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."atomic-counter".components.sublibs.test-utils or (errorHandler.buildDepError "atomic-counter:test-utils"))
            ];
          buildable = true;
          };
        };
      };
    }
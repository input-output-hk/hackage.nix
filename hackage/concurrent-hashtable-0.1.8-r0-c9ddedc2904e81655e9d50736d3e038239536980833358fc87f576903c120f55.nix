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
      specVersion = "1.12";
      identifier = { name = "concurrent-hashtable"; version = "0.1.8"; };
      license = "BSD-3-Clause";
      copyright = "2019 Peter Robinson";
      maintainer = "pwr@lowerbound.io";
      author = "Peter Robinson";
      homepage = "https://github.com/pwrobinson/concurrent-hashtable#readme";
      url = "";
      synopsis = "Thread-safe hash tables for multi-cores!";
      description = "Please see the README on GitHub at <https://github.com/pwrobinson/concurrent-hashtable#readme>. Benchmarks can be found at <https://lowerbound.io/blog/2019-10-24_concurrent_hash_table_performance.html>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "concurrent-hashtable-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."concurrent-hashtable" or (errorHandler.buildDepError "concurrent-hashtable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."dictionary-type" or (errorHandler.buildDepError "dictionary-type"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "mainbench" = {
          depends = [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."concurrent-hashtable" or (errorHandler.buildDepError "concurrent-hashtable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."dictionary-type" or (errorHandler.buildDepError "dictionary-type"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }
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
    flags = { debug = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "thread-utils-context"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2023-2026 Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/thread-utils#readme";
      url = "";
      synopsis = "Garbage-collected thread local storage";
      description = "Please see the README on GitHub at <https://github.com/iand675/thread-utils-context#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."thread-utils-finalizers" or (errorHandler.buildDepError "thread-utils-finalizers"))
        ];
        buildable = true;
      };
      tests = {
        "thread-utils-context-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."thread-utils-context" or (errorHandler.buildDepError "thread-utils-context"))
            (hsPkgs."thread-utils-finalizers" or (errorHandler.buildDepError "thread-utils-finalizers"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "thread-utils-context-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."thread-utils-context" or (errorHandler.buildDepError "thread-utils-context"))
          ];
          buildable = true;
        };
        "thread-utils-context-contention" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."thread-utils-context" or (errorHandler.buildDepError "thread-utils-context"))
          ];
          buildable = true;
        };
      };
    };
  }
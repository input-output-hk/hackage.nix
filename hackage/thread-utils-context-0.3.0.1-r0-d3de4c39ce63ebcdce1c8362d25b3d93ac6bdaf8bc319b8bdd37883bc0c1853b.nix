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
      specVersion = "1.12";
      identifier = { name = "thread-utils-context"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Ian Duncan";
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
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."thread-utils-finalizers" or (errorHandler.buildDepError "thread-utils-finalizers"))
          ];
        buildable = true;
        };
      tests = {
        "thread-utils-context-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."thread-utils-context" or (errorHandler.buildDepError "thread-utils-context"))
            (hsPkgs."thread-utils-finalizers" or (errorHandler.buildDepError "thread-utils-finalizers"))
            ];
          buildable = true;
          };
        };
      };
    }
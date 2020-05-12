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
    flags = { benchmark = false; tests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "parallel-io"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Max Bolingbroke <batterseapower@hotmail.com>";
      author = "Max Bolingbroke <batterseapower@hotmail.com>,\nNeil Mitchell <ndmitchell@gmail.com>,\nBulat Ziganshin <bulat.ziganshin@gmail.com>";
      homepage = "http://batterseapower.github.com/parallel-io";
      url = "";
      synopsis = "Combinators for executing IO actions in parallel on a thread pool.";
      description = "This package provides combinators for sequencing IO actions onto a thread pool. The\nthread pool is guaranteed to contain no more unblocked threads than a user-specified upper limit, thus\nminimizing contention.\n\nFurthermore, the parallel combinators can be used reentrantly - your parallel\nactions can spawn more parallel actions - without violating this property of the thread pool.\n\nThe package is heavily inspired by the thread <http://thread.gmane.org/gmane.comp.lang.haskell.cafe/56499/focus=56521>.\nThanks to Neil Mitchell and Bulat Ziganshin for the code this package is based on.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      exes = {
        "benchmark" = {
          depends = (pkgs.lib).optionals (!(!flags.benchmark)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = if !flags.benchmark then false else true;
          };
        "tests" = {
          depends = (pkgs.lib).optionals (!(!flags.tests)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = if !flags.tests then false else true;
          };
        };
      };
    }
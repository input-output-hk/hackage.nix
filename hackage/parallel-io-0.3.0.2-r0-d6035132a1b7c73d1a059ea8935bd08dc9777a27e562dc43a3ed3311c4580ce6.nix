let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { benchmark = false; fuzz = false; tests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "parallel-io"; version = "0.3.0.2"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."random" or (buildDepError "random"))
          ];
        };
      exes = {
        "benchmark" = {
          depends = (pkgs.lib).optionals (!(!flags.benchmark)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        "tests" = {
          depends = (pkgs.lib).optionals (!(!flags.tests)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "fuzz" = {
          depends = (pkgs.lib).optionals (!(!flags.fuzz)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."extensible-exceptions" or (buildDepError "extensible-exceptions"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }
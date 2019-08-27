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
    flags = {
      optimize = true;
      tests = true;
      benchmarks = true;
      hpc = true;
      nolib = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "speculation"; version = "0.8.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/speculation";
      url = "";
      synopsis = "A framework for safe, programmable, speculative parallelism";
      description = "A framework for safe, programmable, speculative parallelism, loosely based on:\n\n*  Prakash Prabhu, G. Ramalingam, and Kapil Vaswani, \\\"/Safe Programmable Speculative Parallelism/\\\",\nIn the proceedings of Programming Language Design and Implementation (PLDI) Vol 45, Issue 6 (June 2010) pp 50-61.\n<http://research.microsoft.com/pubs/118795/pldi026-vaswani.pdf>\n\nThis package provides speculative function application and speculative folds. Speculative STM transactions take the place\nof the transactional rollback machinery from the paper.\n\nFor example:\n\n@'spec' g f a@ evaluates @f g@ while forcing @a@, if @g == a@ then @f g@ is returned, otherwise @f a@ is evaluated and returned. Furthermore, if the argument has already been evaluated, we skip the @f g@ computation entirely. If a good guess at the value of @a@ is available, this is one way to induce parallelism in an otherwise sequential task. However, if the guess isn\\'t available more cheaply than the actual answer, then this saves no work and if the guess is wrong, you risk evaluating the function twice.\n\nThe best-case timeline looks like:\n\n> [---- f g ----]\n>    [----- a -----]\n> [-- spec g f a --]\n\nThe worst-case timeline looks like:\n\n> [---- f g ----]\n>    [----- a -----]\n>                  [---- f a ----]\n> [------- spec g f a -----------]\n\nCompare these to the timeline of @f \$! a@:\n\n> [---- a -----]\n>              [---- f a ----]\n\n'specSTM' provides a similar time table for STM actions, but also rolls back side-effects.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."stm" or (buildDepError "stm"))
          ];
        };
      exes = {
        "test-speculation" = {
          depends = (pkgs.lib).optionals (!(!flags.tests)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck" or (buildDepError "test-framework-quickcheck"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        "benchmark-speculation" = {
          depends = (pkgs.lib).optionals (!(!flags.benchmarks)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }
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
    flags = { hydra = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsbencher"; version = "1.12"; };
      license = "BSD-3-Clause";
      copyright = "(c) Ryan Newton 2013";
      maintainer = "bo.joel.svensson@gmail.com";
      author = "Ryan Newton, Joel Svensson";
      homepage = "";
      url = "";
      synopsis = "Launch and gather data from Haskell and non-Haskell benchmarks.";
      description = "Benchmark frameworks are usually very specific to the\nhost language/environment.  Hence they are usually about as reusable\nas compiler passes (that is, not).\n\nNevertheless, `hsbencher` is an attempt at a reusable benchmark\nframework.  It knows fairly little about what the benchmarks do, and\nis mostly concerned with defining and iterating through\nconfiguration spaces (e.g. varying the number of threads), and\nmanaging the data that results.\n\nBenchmark data is stored in simple text files, and optionally\nuploaded via pluggable backend packages such as `hsbencher-fusion`,\nwhich uploads to Google Fusion Tables.\n\n`hsbencher` attempts to stradle the divide between language-specific\nand language-agnostic by having an extensible set of `BuildMethod`s.\nAs shipped, `hsbencher` knows a little about cabal, ghc, and less\nabout Make, but it can be taught more.\n\nThe general philosophy is to have benchmarks follow a simple\nprotocol, for example printing out a line \"SELFTIMED: 3.3\" if they\nwish to report their own timing, in seconds.  The focus is on benchmarks that\nrun long enough to run in their own process.  This is typical of\nparallelism benchmarks and different than the fine-grained\nbenchmarks that are well supported by \"Criterion\".\n\n\n`hsbencher` is used by creating a script or executable that imports `HSBencher`\nand provides a list of benchmarks, each of which is decorated with its\nparameter space.  Below is a minimal example that creates a two-configuration\nparameter space:\n\n@\nimport HSBencher\nmain = defaultMainWithBechmarks\n.      [ mkBenchmark \\\"bench1/bench1.cabal\\\" [\\\"1000\\\"] \$\n.        Or [ Set NoMeaning (RuntimeParam \\\"+RTS -qa -RTS\\\")\n.            , Set NoMeaning (RuntimeEnv \\\"HELLO\\\" \\\"yes\\\") ] ]\n@\n\nThe output would appear as in this gist:\n<https://gist.github.com/rrnewton/5667800>\n\nMore examples can be found here:\n<https://github.com/rrnewton/HSBencher/tree/master/hsbencher/example>\n\nChangeLog:\n\n* (1.3.8) Added @--skipto@ and @--runid@ arguments\n\n* (1.3.4) Added ability to prune benchmarks with patterns on command line.\n\n* (1.4.2) Breaking changes, don't use Benchmark constructor directly.  Use mkBenchmark.\n\n* (1.5) New columns in schema.\n\n* (1.8) Backend plugins, hsbencher-fusion package factored out.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."io-streams" or (buildDepError "io-streams"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."GenericPretty" or (buildDepError "GenericPretty"))
          ] ++ (pkgs.lib).optional (flags.hydra) (hsPkgs."hydra-print" or (buildDepError "hydra-print"));
        };
      tests = {
        "hsbencher-unit-tests" = {
          depends = [
            (hsPkgs."hsbencher" or (buildDepError "hsbencher"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."text" or (buildDepError "text"))
            ] ++ (pkgs.lib).optional (flags.hydra) (hsPkgs."hydra-print" or (buildDepError "hydra-print"));
          };
        "hsbencher-test1" = {
          depends = [
            (hsPkgs."hsbencher" or (buildDepError "hsbencher"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ] ++ (pkgs.lib).optional (flags.hydra) (hsPkgs."hydra-print" or (buildDepError "hydra-print"));
          };
        "hsbencher-test2" = {
          depends = [
            (hsPkgs."hsbencher" or (buildDepError "hsbencher"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ] ++ (pkgs.lib).optional (flags.hydra) (hsPkgs."hydra-print" or (buildDepError "hydra-print"));
          };
        };
      };
    }
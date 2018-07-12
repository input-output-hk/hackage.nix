{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      hydra = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsbencher";
          version = "1.20.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Ryan Newton 2013";
        maintainer = "bo.joel.svensson@gmail.com";
        author = "Ryan Newton, Joel Svensson";
        homepage = "";
        url = "";
        synopsis = "Launch and gather data from Haskell and non-Haskell benchmarks.";
        description = "Benchmark frameworks are usually very specific to the\nhost language/environment.  Hence they are usually about as reusable\nas compiler passes (that is, not).\n\nNevertheless, `hsbencher` is an attempt at a reusable benchmark\nframework.  It knows fairly little about what the benchmarks do, and\nis mostly concerned with defining and iterating through\nconfiguration spaces (e.g. varying the number of threads), and\nmanaging the data that results.\n\nBenchmark data is stored in simple text files, and optionally\nuploaded via pluggable backend packages such as `hsbencher-fusion`,\nwhich uploads to Google Fusion Tables.\n\n`hsbencher` attempts to stradle the divide between language-specific\nand language-agnostic by having an extensible set of `BuildMethod`s.\nAs shipped, `hsbencher` knows a little about cabal, ghc, and less\nabout Make, but it can be taught more.\n\nThe general philosophy is to have benchmarks follow a simple\nprotocol, for example printing out a line \"SELFTIMED: 3.3\" if they\nwish to report their own timing, in seconds.  The focus is on benchmarks that\nrun long enough to run in their own process.  This is typical of\nparallelism benchmarks and different than the fine-grained\nbenchmarks that are well supported by \"Criterion\".\n\n\n`hsbencher` is used by creating a script or executable that imports `HSBencher`\nand provides a list of benchmarks, each of which is decorated with its\nparameter space.  Below is a minimal example that creates a two-configuration\nparameter space:\n\n@\nimport HSBencher\nmain = defaultMainModifyConfig \$ addBenchmarks\n.      [ mkBenchmark \\\"bench1/bench1.cabal\\\" [\\\"1000\\\"] \$\n.        Or [ Set NoMeaning (RuntimeParam \\\"+RTS -qa -RTS\\\")\n.            , Set NoMeaning (RuntimeEnv \\\"HELLO\\\" \\\"yes\\\") ] ]\n@\n\nThe output would appear as in this gist:\n<https://gist.github.com/rrnewton/5667800>\n\nMore examples can be found here:\n<https://github.com/rrnewton/HSBencher/tree/master/hsbencher/example>\n\nChangeLog:\n\n* (1.3.8) Added @--skipto@ and @--runid@ arguments\n\n* (1.3.4) Added ability to prune benchmarks with patterns on command line.\n\n* (1.4.2) Breaking changes, don't use Benchmark constructor directly.  Use mkBenchmark.\n\n* (1.5) New columns in schema.\n\n* (1.8) Backend plugins, hsbencher-fusion package factored out.\n\n* (1.15) Add systemCleaner field to Config\n\n* (1.17) Add cpu affinity control; lspci off by default\n\n* (1.18) Fix COMPILE_FLAGS upload; upload \"unwords\" of COMPILE_FLAGS to avoid quotes in output.\n\n* (1.19.1) Change the semantics of naked runtime args to conjunction, not disjunction.\nAlso allow filtering of benchmarks by BenchSpace as well.\n\n* (1.20)   Add \"--bindir\" command line argument.";
        buildType = "Simple";
      };
      components = {
        "hsbencher" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.random
            hsPkgs.unix
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.async
            hsPkgs.io-streams
            hsPkgs.data-default
            hsPkgs.GenericPretty
          ] ++ pkgs.lib.optional _flags.hydra hsPkgs.hydra-print;
        };
        tests = {
          "hsbencher-unit-tests" = {
            depends  = [
              hsPkgs.hsbencher
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.HUnit
              hsPkgs.time
              hsPkgs.text
            ] ++ pkgs.lib.optional _flags.hydra hsPkgs.hydra-print;
          };
          "hsbencher-test1" = {
            depends  = [
              hsPkgs.hsbencher
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.directory
            ] ++ pkgs.lib.optional _flags.hydra hsPkgs.hydra-print;
          };
          "hsbencher-test2" = {
            depends  = [
              hsPkgs.hsbencher
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.directory
            ] ++ pkgs.lib.optional _flags.hydra hsPkgs.hydra-print;
          };
        };
      };
    }
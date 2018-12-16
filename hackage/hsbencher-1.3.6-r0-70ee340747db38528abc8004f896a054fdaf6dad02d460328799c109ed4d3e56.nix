{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { fusion = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hsbencher";
        version = "1.3.6";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Ryan Newton 2013";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Flexible benchmark runner for Haskell and non-Haskell benchmarks.";
      description = "Benchmark frameworks are usually very specific to the\nhost language/environment.  Hence they are usually about as reusable\nas compiler passes (that is, not).\n\nNevertheless, `hsbencher` is an attempt at a reusable benchmark\nframework.  It knows fairly little about what the benchmarks do, and\nis mostly concerned with defining and iterating through\nconfiguration spaces (e.g. varying the number of threads), and\nmanaging the data that results.\n\nBenchmark data is stored in simple text files, and optionally\nuploaded to Google Fusion Tables.\n\n`hsbencher` attempts to stradle the divide between language-specific\nand language-agnostic by having an extensible set of `BuildMethod`s.\nAs shipped, `hsbencher` knows a little about cabal, ghc, and less\nabout Make, but it can be taught more.\n\nThe general philosophy is to have benchmarks follow a simple\nprotocol, for example printing out a line \"SELFTIMED: 3.3s\" if they\nwish to report their own timing.  The focus is on benchmarks that\nrun long enough to run in their own process.  This is typical of\nparallelism benchmarks and different than the fine grained\nbenchmarks that are well supported by \"Criterion\".\n\n\n`hsbencher` is used by creating a script or executable that imports `HSBencher`\nand provides a list of benchmarks, each of which is decorated with its\nparameter space.  Below is a minimal example that creates a two-configuration\nparameter space:\n\n@\nimport HSBencher\nmain = defaultMainWithBechmarks\n.      [ Benchmark \\\"bench1/bench1.cabal\\\" [\\\"1000\\\"] \$\n.        Or [ Set NoMeaning (RuntimeParam \\\"+RTS -qa -RTS\\\")\n.            , Set NoMeaning (RuntimeEnv \\\"HELLO\\\" \\\"yes\\\") ] ]\n@\n\nThe output would appear as in this gist:\n<https://gist.github.com/rrnewton/5667800>\n\nMore examples can be found here:\n<https://github.com/rrnewton/HSBencher/tree/master/example>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.random)
          (hsPkgs.unix)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.async)
          (hsPkgs.hydra-print)
          (hsPkgs.io-streams)
          (hsPkgs.GenericPretty)
          (hsPkgs.http-conduit)
        ] ++ pkgs.lib.optional (flags.fusion) (hsPkgs.handa-gdata);
      };
      tests = {
        "test1" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.unix)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.async)
            (hsPkgs.hydra-print)
            (hsPkgs.io-streams)
            (hsPkgs.GenericPretty)
            (hsPkgs.http-conduit)
            (hsPkgs.hsbencher)
          ] ++ pkgs.lib.optional (flags.fusion) (hsPkgs.handa-gdata);
        };
        "test2" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.random)
            (hsPkgs.unix)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.mtl)
            (hsPkgs.async)
            (hsPkgs.hydra-print)
            (hsPkgs.io-streams)
            (hsPkgs.GenericPretty)
            (hsPkgs.http-conduit)
            (hsPkgs.hsbencher)
          ] ++ pkgs.lib.optional (flags.fusion) (hsPkgs.handa-gdata);
        };
      };
    };
  }
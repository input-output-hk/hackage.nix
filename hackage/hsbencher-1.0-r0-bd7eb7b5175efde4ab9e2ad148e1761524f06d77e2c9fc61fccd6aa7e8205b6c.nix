{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { fusion = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsbencher"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Ryan Newton 2013";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Flexible benchmark runner for Haskell and non-Haskell benchmarks.";
      description = "Benchmark frameworks are usually very specific to the\nhost language/environment.  Hence they are usually about as reusable\nas compiler passes (that is, not).\nNevertheless, hsbencher is an attempt at a reusable benchmark\nframework.  It knows fairly little about what the benchmarks do, and\nis mostly concerned with defining and iterating through\nconfiguration spaces (e.g. varying the number of threads), and\nmanaging the data that results.\nBenchmark data is stored in simple text files, and optionally\nuploaded to Google Fusion Tables.\nhsbencher attempts to stradle the divide between language-specific\nand language-agnostic by having an extensible set of `BuildMethod`s.\nAs shipped, hsbencher knows a little about cabal, ghc, and less\nabout Make, but it can be taught more.\nThe general philosophy is to have benchmarks follow a simple\nprotocol, for example printing out a line \"SELFTIMED: 3.3s\" if they\nwish to report their own timing.  The focus is on benchmarks that\nrun long enough to run in their own process.  This is typical of\nparallelism benchmarks and different than the fine grained\nbenchmarks that are well supported by \"Criterion\".";
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
          ] ++ (pkgs.lib).optional (flags.fusion) (hsPkgs.handa-gdata);
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
            (hsPkgs.hsbencher)
            ];
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
            (hsPkgs.hsbencher)
            ];
          };
        };
      };
    }
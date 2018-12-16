{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { exe = false; };
    package = {
      specVersion = "1.10.0";
      identifier = {
        name = "BenchmarkHistory";
        version = "0.0.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2015";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2015";
      homepage = "https://github.com/choener/BenchmarkHistory";
      url = "";
      synopsis = "Benchmark functions with history";
      description = "Benchmark functions via @GHC.Stats@ and keep a history of\nrunning time and allocation profiles.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.statistics)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "BenchmarkHistogram" = {
          depends = pkgs.lib.optionals (flags.exe) [
            (hsPkgs.base)
            (hsPkgs.BenchmarkHistory)
            (hsPkgs.Chart)
            (hsPkgs.Chart-diagrams)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }
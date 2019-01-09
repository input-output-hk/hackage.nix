{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { analyse = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "fibon"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dmp@rice.edu";
      author = "David M Peixotto";
      homepage = "http://github.com/dmpots/fibon/wiki";
      url = "";
      synopsis = "A reworking of the classic nofib benchmark suite";
      description = "Fibon is a set of tools for running and analyzing benchmark programs.\nThe fibon package contains the tools for benchmarking, but not the\nbenchmarks themselves. The package will build, but will not have any\nbenchmarks to run. A set of benchmarks can be found at\nhttp://github.com/dmpots/fibon-benchmarks\nInstalling the cabal package will get you the following tools\n* fibon - runs the benchmarks\n* fibon-analyse - analyses the results of a benchmark run\n* fibon-init - generate a benchmark description from a cabal file\nSee http://github.com/dmpots/fibon/wiki for more details";
      buildType = "Custom";
      };
    components = {
      exes = {
        "fibon-run" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hslogger)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.statistics)
            (hsPkgs.vector)
            ];
          };
        "fibon-init" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.Cabal)
            ];
          };
        "fibon-analyse" = {
          depends = (pkgs.lib).optionals (flags.analyse) [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.tabular)
            (hsPkgs.vector)
            (hsPkgs.statistics)
            ];
          };
        };
      };
    }
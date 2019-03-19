{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "chronos-bench"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019, Florian Knupfer";
      maintainer = "fknupfer@gmail.com";
      author = "Florian Knupfer";
      homepage = "https://github.com/knupfer/chronos";
      url = "";
      synopsis = "Benchmarking tool with focus on comparing results.";
      description = "This tool performs lazy benchmarking of functions and shell commands with continuous feedback and improving precision.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.ansi-terminal)
          (hsPkgs.process)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.terminal-size)
          (hsPkgs.bytestring)
          (hsPkgs.optparse-applicative)
          ];
        };
      exes = {
        "chronos" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.chronos-bench)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      benchmarks = {
        "bench" = { depends = [ (hsPkgs.chronos-bench) (hsPkgs.base) ]; };
        };
      };
    }
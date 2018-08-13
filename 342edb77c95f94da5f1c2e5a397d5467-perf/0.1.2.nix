{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.14";
      identifier = {
        name = "perf";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/perf";
      url = "";
      synopsis = "low-level performance statistics";
      description = "\nSee <https://tonyday567.github.io/perf perf> for example results and write-up.\n";
      buildType = "Simple";
    };
    components = {
      "perf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rdtsc)
          (hsPkgs.foldl)
          (hsPkgs.protolude)
          (hsPkgs.tdigest)
          (hsPkgs.containers)
          (hsPkgs.time)
        ];
      };
      exes = {
        "perf-examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.perf)
            (hsPkgs.optparse-generic)
            (hsPkgs.formatting)
            (hsPkgs.foldl)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.tdigest)
            (hsPkgs.chart-unit)
            (hsPkgs.mwc-probability)
          ];
        };
      };
    };
  }
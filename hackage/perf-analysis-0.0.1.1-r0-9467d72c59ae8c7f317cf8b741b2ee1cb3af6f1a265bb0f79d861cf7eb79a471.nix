{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "perf-analysis";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/perf#readme";
      url = "";
      synopsis = "analysis example using perf";
      description = "Analytical tools to use with perf.";
      buildType = "Simple";
    };
    components = {
      "perf-analysis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.formatting)
          (hsPkgs.perf)
          (hsPkgs.protolude)
          (hsPkgs.scientific)
          (hsPkgs.tdigest)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "perf-examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.formatting)
            (hsPkgs.optparse-generic)
            (hsPkgs.perf)
            (hsPkgs.perf-analysis)
            (hsPkgs.protolude)
            (hsPkgs.scientific)
            (hsPkgs.tdigest)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }
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
      specVersion = "1.10";
      identifier = {
        name = "perf";
        version = "0.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/perf#readme";
      url = "";
      synopsis = "low-level performance statistics";
      description = "A set of tools to measure time performance.";
      buildType = "Simple";
    };
    components = {
      "perf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.foldl)
          (hsPkgs.numhask)
          (hsPkgs.protolude)
          (hsPkgs.rdtsc)
          (hsPkgs.tdigest)
          (hsPkgs.time)
        ];
      };
      exes = {
        "perf-examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.formatting)
            (hsPkgs.numhask)
            (hsPkgs.optparse-generic)
            (hsPkgs.perf)
            (hsPkgs.protolude)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.perf)
            (hsPkgs.protolude)
          ];
        };
      };
    };
  }
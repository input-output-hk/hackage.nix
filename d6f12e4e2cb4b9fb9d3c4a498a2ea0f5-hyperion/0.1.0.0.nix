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
        name = "hyperion";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicolas.mattia@tweag.io";
      author = "Tweag I/O";
      homepage = "https://github.com/tweag/hyperion#readme";
      url = "";
      synopsis = "Reliable performance measurement with robust data export.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hyperion" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.clock)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.generic-deriving)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.random)
          (hsPkgs.random-shuffle)
          (hsPkgs.statistics)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "hyperion-micro-benchmark-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hyperion)
            (hsPkgs.process)
          ];
        };
        "hyperion-end-to-end-benchmark-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hyperion)
            (hsPkgs.process)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.hyperion)
            (hsPkgs.lens)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }
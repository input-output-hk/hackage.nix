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
        name = "chart-unit";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-unit";
      url = "";
      synopsis = "A set of native haskell charts.";
      description = "See https://tonyday567.github.io/chart-unit/index.html for some description.";
      buildType = "Simple";
    };
    components = {
      "chart-unit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.colour)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.foldl)
          (hsPkgs.formatting)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.numhask)
          (hsPkgs.numhask-range)
          (hsPkgs.text)
        ];
      };
      exes = {
        "chart-unit-examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.chart-unit)
            (hsPkgs.protolude)
            (hsPkgs.foldl)
            (hsPkgs.text)
            (hsPkgs.numhask)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-probability)
            (hsPkgs.primitive)
            (hsPkgs.ad)
            (hsPkgs.reflection)
            (hsPkgs.tdigest)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.chart-unit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.numhask)
          ];
        };
      };
    };
  }
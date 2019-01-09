{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chart-unit"; version = "0.3.1"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.colour)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.diagrams)
          (hsPkgs.diagrams-core)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.foldl)
          (hsPkgs.formatting)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.numhask)
          (hsPkgs.numhask-range)
          (hsPkgs.protolude)
          (hsPkgs.text)
          (hsPkgs.QuickCheck)
          (hsPkgs.SVGFonts)
          ];
        };
      exes = {
        "chart-unit-examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.chart-unit)
            (hsPkgs.protolude)
            (hsPkgs.containers)
            (hsPkgs.diagrams)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-svg)
            (hsPkgs.linear)
            (hsPkgs.foldl)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.formatting)
            (hsPkgs.SVGFonts)
            (hsPkgs.numhask)
            (hsPkgs.numhask-range)
            (hsPkgs.mwc-random)
            (hsPkgs.mwc-probability)
            (hsPkgs.primitive)
            (hsPkgs.ad)
            (hsPkgs.ListLike)
            (hsPkgs.reflection)
            (hsPkgs.tdigest)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.chart-unit)
            (hsPkgs.protolude)
            (hsPkgs.smallcheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.numhask)
            (hsPkgs.numhask-range)
            (hsPkgs.data-default)
            (hsPkgs.diagrams-lib)
            ];
          };
        };
      };
    }
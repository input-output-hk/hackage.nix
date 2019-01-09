{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "chart-unit"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-unit#readme";
      url = "";
      synopsis = "Native haskell charts.";
      description = "<<https://tonyday567.github.io/other/mainExample.svg>>\n\nchart-unit is a native haskell charting library designed:\n\n- as a chart DSL and algebra\n\n- towards a minimalist look and feel\n\n- to provide a set of default values that are robust across different data and physical chart scales\n\n- around provision of a small but core set of chart types.\n\nSee <https://tonyday567.github.io/chart-unit/index.html chart-unit> for a chart gallery.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.SVGFonts)
          (hsPkgs.base)
          (hsPkgs.colour)
          (hsPkgs.data-default)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.foldl)
          (hsPkgs.formatting)
          (hsPkgs.generic-lens)
          (hsPkgs.lens)
          (hsPkgs.linear)
          (hsPkgs.numhask)
          (hsPkgs.numhask-prelude)
          (hsPkgs.numhask-range)
          (hsPkgs.palette)
          (hsPkgs.protolude)
          (hsPkgs.scientific)
          (hsPkgs.svg-builder)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.chart-unit)
            (hsPkgs.doctest)
            (hsPkgs.numhask)
            (hsPkgs.numhask-prelude)
            (hsPkgs.numhask-range)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "chart-unit"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tony Day";
      maintainer = "tonyday567@gmail.com";
      author = "Tony Day";
      homepage = "https://github.com/tonyday567/chart-unit";
      url = "";
      synopsis = "A set of native haskell charts.";
      description = "readme.lhs";
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
          (hsPkgs.diagrams-rasterific)
          (hsPkgs.foldl)
          (hsPkgs.lens)
          (hsPkgs.primitive)
          (hsPkgs.protolude)
          (hsPkgs.text)
          ];
        };
      exes = {
        "readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.chart-unit)
            (hsPkgs.containers)
            (hsPkgs.diagrams)
            (hsPkgs.diagrams-core)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-rasterific)
            (hsPkgs.diagrams-svg)
            (hsPkgs.foldl)
            (hsPkgs.lens)
            (hsPkgs.primitive)
            (hsPkgs.protolude)
            (hsPkgs.random-fu)
            (hsPkgs.text)
            ];
          };
        };
      };
    }
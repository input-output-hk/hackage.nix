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
        name = "plot-light-examples";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Marco Zocca";
      maintainer = "zocca.marco gmail";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/plot-light-examples";
      url = "";
      synopsis = "Example binaries for plot-light";
      description = "Example binaries for plot-light";
      buildType = "Simple";
    };
    components = {
      "plot-light-examples" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
        ];
      };
      exes = {
        "scatter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.plot-light)
            (hsPkgs.plot-light-examples)
            (hsPkgs.attoparsec)
            (hsPkgs.text)
            (hsPkgs.colour)
            (hsPkgs.blaze-svg)
            (hsPkgs.scientific)
          ];
        };
        "timeseries" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.plot-light)
            (hsPkgs.plot-light-examples)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-time)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.colour)
            (hsPkgs.blaze-svg)
            (hsPkgs.scientific)
          ];
        };
        "heatmap" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.plot-light)
            (hsPkgs.plot-light-examples)
            (hsPkgs.attoparsec)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.colour)
            (hsPkgs.blaze-svg)
            (hsPkgs.scientific)
          ];
        };
      };
    };
  }
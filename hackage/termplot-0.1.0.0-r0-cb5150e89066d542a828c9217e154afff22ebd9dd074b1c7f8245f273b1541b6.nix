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
        name = "termplot";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015 Ricardo Catalinas Jiménez";
      maintainer = "Ricardo Catalinas Jiménez <r@untroubled.be>";
      author = "Ricardo Catalinas Jiménez <r@untroubled.be>";
      homepage = "https://github.com/jimenezrick/termplot";
      url = "";
      synopsis = "Plot time series in your terminal using commands stdout";
      description = "Use unicode characters to plot fancy time series in real-time in your terminal.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "termplot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time-units)
            (hsPkgs.transformers)
            (hsPkgs.data-default)
            (hsPkgs.vty)
            (hsPkgs.brick)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.unix)
            (hsPkgs.split)
          ];
        };
      };
    };
  }
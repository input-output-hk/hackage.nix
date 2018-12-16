{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clac";
        version = "0.5.0";
      };
      license = "GPL-3.0-only";
      copyright = "Alexander Berntsen 2015";
      maintainer = "alexander@plaimi.net";
      author = "Alexander Berntsen";
      homepage = "";
      url = "";
      synopsis = "Simple CLI RPN calculator";
      description = "Simple CLI RPN calculator.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "clac" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dsp)
            (hsPkgs.optparse-applicative)
            (hsPkgs.plailude)
            (hsPkgs.pretty-tree)
            (hsPkgs.safe)
            (hsPkgs.split)
          ];
        };
      };
    };
  }
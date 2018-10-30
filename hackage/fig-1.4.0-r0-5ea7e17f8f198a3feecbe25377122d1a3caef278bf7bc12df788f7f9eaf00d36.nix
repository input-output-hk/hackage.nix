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
      specVersion = "1.6";
      identifier = {
        name = "fig";
        version = "1.4.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Anders Lau Olsen <anders.lau.olsen@gmail.com>";
      author = "Anders Lau Olsen";
      homepage = "http://www.bergsoe.org/fig";
      url = "http://www.bergsoe.org/fig/fig-1.4.0.tar.gz";
      synopsis = "Manipulation of FIG files";
      description = "The Fig library provides parsing and printing for the FIG 3.2 format\n(the format used by the Xfig drawing program) together with a simple\nsearch-and-replace facility.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.parsec)
        ];
      };
    };
  }
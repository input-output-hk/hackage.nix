{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gsmenu";
        version = "3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "athas@sigkill.dk";
      author = "Troels Henriksen";
      homepage = "http://sigkill.dk/programs/gsmenu";
      url = "";
      synopsis = "A visual generic menu";
      description = "Grid-oriented element selection inspired by XMonadContrib's GridSelect.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "gsmenu" = {
          depends  = [
            (hsPkgs.X11)
            (hsPkgs.mtl)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.sindre)
            (hsPkgs.text)
            (hsPkgs.permute)
          ];
        };
      };
    };
  }
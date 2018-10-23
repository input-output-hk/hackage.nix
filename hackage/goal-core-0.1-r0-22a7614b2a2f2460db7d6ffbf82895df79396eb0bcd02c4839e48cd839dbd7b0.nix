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
        name = "goal-core";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sokolo@mis.mpg.de";
      author = "Sacha Sokoloski";
      homepage = "";
      url = "";
      synopsis = "Core imports for Geometric Optimization Libraries.";
      description = "Core provides a bunch of convenience functions, basic exports, as\nwell as plotting functionality, which are independent of the rest of the\nlibrary.";
      buildType = "Simple";
    };
    components = {
      "goal-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.lens)
          (hsPkgs.containers)
          (hsPkgs.colour)
          (hsPkgs.gtk)
          (hsPkgs.cairo)
          (hsPkgs.Chart)
          (hsPkgs.Chart-cairo)
          (hsPkgs.Chart-gtk)
        ];
      };
      exes = {
        "contours" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.goal-core)
          ];
        };
      };
    };
  }
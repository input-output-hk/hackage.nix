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
        name = "OpenSCAD";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwm@mired.org";
      author = "Mike Meyer";
      homepage = "https://graphics-openscad.googlecode.com/";
      url = "";
      synopsis = "ADT wrapper and renderer for OpenSCAD models.";
      description = "An algebraic data type for describing OpenSCAD models,\nfunctions to make building such models easier, and\nfunctions for rendering an ADT into an OpenSCAD program.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.colour)
          (hsPkgs.filepath)
        ];
      };
      tests = {
        "Units" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.colour)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.Cabal)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }
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
      specVersion = "1.8";
      identifier = {
        name = "not-gloss-examples";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "examples for not-gloss";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "not-gloss-display" = {
          depends  = [
            (hsPkgs.not-gloss)
            (hsPkgs.spatial-math)
            (hsPkgs.base)
          ];
        };
        "not-gloss-animate" = {
          depends  = [
            (hsPkgs.not-gloss)
            (hsPkgs.spatial-math)
            (hsPkgs.base)
          ];
        };
        "not-gloss-simulate" = {
          depends  = [
            (hsPkgs.not-gloss)
            (hsPkgs.spatial-math)
            (hsPkgs.base)
          ];
        };
        "not-gloss-game" = {
          depends  = [
            (hsPkgs.not-gloss)
            (hsPkgs.spatial-math)
            (hsPkgs.GLUT)
            (hsPkgs.containers)
            (hsPkgs.X11)
            (hsPkgs.base)
          ];
        };
      };
    };
  }
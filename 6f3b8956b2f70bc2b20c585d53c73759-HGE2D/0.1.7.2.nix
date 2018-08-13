{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "HGE2D";
        version = "0.1.7.2";
      };
      license = "MIT";
      copyright = "Martin Buck <buckmartin@buckmartin.de>";
      maintainer = "Martin Buck <buckmartin@buckmartin.de>";
      author = "Martin Buck <buckmartin@buckmartin.de>";
      homepage = "https://github.com/I3ck/HGE2D";
      url = "";
      synopsis = "2D game engine written in Haskell";
      description = "See README and examples/ for further information";
      buildType = "Simple";
    };
    components = {
      "HGE2D" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.time)
          (hsPkgs.safe)
        ];
      };
      exes = {
        "example1" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HGE2D)
          ];
        };
        "example2" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HGE2D)
          ];
        };
        "example3" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HGE2D)
          ];
        };
        "example4" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HGE2D)
          ];
        };
      };
    };
  }
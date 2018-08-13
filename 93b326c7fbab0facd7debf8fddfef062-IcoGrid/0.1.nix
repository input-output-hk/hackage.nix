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
      specVersion = "1.2";
      identifier = {
        name = "IcoGrid";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright 2009 Jim Snow";
      maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
      author = "Jim Snow";
      homepage = "http://www.haskell.org/haskellwiki/IcoGrid";
      url = "";
      synopsis = "Library for generating grids of hexagons and pentagons mapped to a sphere.";
      description = "Defines functions for dealing with a type of hexagon grid wrapped around a sphere.  The full grid is composed of 20 smaller trianglular grids of hexagons, that fit together as an icosahedron with pentagons at the corners.  Each grid cell is assigned an integer value, and we can get a list of the neighbors of a particular cell.  We can also ask for a vector in 3d space that is the center of a particular cell.  This would be well suited for a game played on a spherical world or a planetary environment simulator.";
      buildType = "Simple";
    };
    components = {
      "IcoGrid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.GlomeVec)
        ];
      };
    };
  }
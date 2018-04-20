{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "GlomeVec";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright 2008,2009 Jim Snow";
        maintainer = "Jim Snow <jsnow@cs.pdx.edu>";
        author = "Jim Snow";
        homepage = "http://www.haskell.org/haskellwiki/Glome";
        url = "";
        synopsis = "Simple 3D vector library";
        description = "A simple library for dealing with 3D vectors, suitable for graphics projects.  A small texture library with Perlin noise is included as well.";
        buildType = "Simple";
      };
      components = {
        GlomeVec = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }
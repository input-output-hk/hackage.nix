{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gemstone";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "cds@corbinsimpson.com";
        author = "Corbin Simpson";
        homepage = "http://corbinsimpson.com/";
        url = "";
        synopsis = "A simple library for SDL+GL games.";
        description = "Gemstone helps you build games.";
        buildType = "Simple";
      };
      components = {
        gemstone = {
          depends  = [
            hsPkgs.base
            hsPkgs.FTGL
            hsPkgs.OpenGL
            hsPkgs.SDL
            hsPkgs.SDL-image
            hsPkgs.array
            hsPkgs.bitmap
            hsPkgs.bitmap-opengl
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.stb-image
            hsPkgs.transformers
          ];
        };
      };
    }
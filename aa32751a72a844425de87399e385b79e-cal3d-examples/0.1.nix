{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cal3d-examples";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "let at = \"@\" in concat [\"gdweber\", at, \"iue.edu\"]";
        author = "Gregory D. Weber";
        homepage = "http://haskell.org/haskellwiki/Cal3d_animation";
        url = "";
        synopsis = "Examples for the Cal3d animation library.";
        description = "Cal3d animation examples for cal3d.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cally-dump = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.SDL
              hsPkgs.cal3d
              hsPkgs.cal3d-opengl
            ];
          };
          cally-gl = {
            depends  = [
              hsPkgs.base
              hsPkgs.OpenGL
              hsPkgs.SDL
              hsPkgs.cal3d
              hsPkgs.cal3d-opengl
            ];
          };
        };
      };
    }
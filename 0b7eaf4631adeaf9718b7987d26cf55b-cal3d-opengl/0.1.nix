{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cal3d-opengl";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "let at = \"@\" in concat [\"gdweber\", at, \"iue.edu\"]";
        author = "Gregory D. Weber";
        homepage = "http://haskell.org/haskellwiki/Cal3d_animation";
        url = "";
        synopsis = "OpenGL rendering for the Cal3D animation library";
        description = "Connects the Cal3D animation library to OpenGL.\nCal3D is a skeletal-based animation library written in C++.\nBy itself, it does not rendering, but provides hooks\nso that any graphics API can render the model.\nThis specializes the hooks for OpenGL.\nSee also cal3d, cal3d-examples.";
        buildType = "Simple";
      };
      components = {
        "cal3d-opengl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cal3d
            hsPkgs.OpenGL
          ];
        };
      };
    }
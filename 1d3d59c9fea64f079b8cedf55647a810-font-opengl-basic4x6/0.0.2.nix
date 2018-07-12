{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "font-opengl-basic4x6";
          version = "0.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>";
        author = "Brian Lewis <brian@lorf.org>";
        homepage = "";
        url = "";
        synopsis = "Basic4x6 font for OpenGL";
        description = "Basic4x6 font for OpenGL containing digits and symbols. It is\ncalled \\\"4x6\\\" because it was drawn in 4x6 grids on graph paper.\n\nThis library might not be a good idea, but I needed to display\nsome simple values and didn't want to introduce any heavy\ndependencies.\n\nRun executable 'show-font-basic4x6' for a demo.";
        buildType = "Custom";
      };
      components = {
        "font-opengl-basic4x6" = {
          depends  = [
            hsPkgs.OpenGL
            hsPkgs.base
          ];
        };
        exes = {
          "show-font-basic4x6" = {
            depends  = [
              hsPkgs.GLFW-b
              hsPkgs.OpenGL
              hsPkgs.base
            ];
          };
        };
      };
    }
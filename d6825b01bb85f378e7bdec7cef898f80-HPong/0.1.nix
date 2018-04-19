{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HPong";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Remco Niemeijer <R.A.Niemeijer@tue.nl>";
        author = "Remco Niemeijer";
        homepage = "";
        url = "";
        synopsis = "2-D single-player game";
        description = "A simple OpenGL Pong game based on GLFW";
        buildType = "Simple";
      };
      components = {
        exes = {
          hpong = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-accessor
              hsPkgs.data-accessor-template
              hsPkgs.OpenGL
              hsPkgs.GLFW
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "SGdemo";
          version = "1.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "Copyright (c) 2009, Neil Brown";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "";
        url = "";
        synopsis = "An example of using the SG and OpenGL libraries";
        description = "This program serves as a demonstration of the functions of the SG library\n(to be found on Hackage:\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/SG>)) by\nvisualising it with OpenGL.  It also serves as a sort of informal test\nsuite for the SG library.  Documentation is available at\nthe top of the main module's source code.";
        buildType = "Simple";
      };
      components = {
        exes = {
          sgdemo = {
            depends  = [
              hsPkgs.base
              hsPkgs.SG
              hsPkgs.OpenGL
              hsPkgs.GLUT
            ];
          };
        };
      };
    }
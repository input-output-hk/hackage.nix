{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gtk2hs-hello";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "(c) Hamish Mackenzie";
        maintainer = "Hamish Mackenzie <Hamish.K.Mackenzie@gmail.com>";
        author = "Hamish Mackenzie";
        homepage = "http://www.haskell.org/hello/";
        url = "";
        synopsis = "Gtk2Hs Hello World, an example package";
        description = "This is an implementation of the classic \"Hello World\" program in\nHaskell using Gtk2Hs, as an example of how to create a minimal Gtk2Hs\napplication.  Please submit any suggestions and improvements.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "gtk2hs-hello" = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.gtk3
              hsPkgs.glib
            ];
          };
        };
      };
    }
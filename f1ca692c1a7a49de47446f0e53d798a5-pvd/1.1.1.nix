{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pvd";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011, Rickard Nilsson";
        maintainer = "rickard.nilsson@telia.com";
        author = "Rickard Nilsson";
        homepage = "http://code.haskell.org/pvd";
        url = "";
        synopsis = "A photo viewer daemon application with remote controlling abilities.";
        description = "pvd, Photo Viewer Daemon, is an image viewer application that displays a fullscreen X11 window and listens for remote commands over TCP. The project also includes pvc, a simple command line client application you can use to control pvd. pvc has commands for setting the current photo playlist, jumping between photos, etc. pvd implements caching in the background which makes it possible to quickly switch between photos even if the files are fetched over network or if pvd runs on a slow computer. pvd uses the DevIL image library for loading photo files, which supports a large number of image formats.";
        buildType = "Simple";
      };
      components = {
        exes = {
          pvd = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.X11
              hsPkgs.Codec-Image-DevIL
              hsPkgs.network
              hsPkgs.mtl
            ];
            libs = [ pkgs.IL pkgs.pthread ];
            build-tools = [ hsPkgs.hsc2hs ];
          };
          pvc = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell98
              hsPkgs.network
              hsPkgs.containers
              hsPkgs.stm
            ];
          };
        };
      };
    }
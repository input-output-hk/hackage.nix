{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "mpvguihs";
          version = "0.1.1";
        };
        license = "GPL-3.0-only";
        copyright = "(C) 2013 Sebastián E. Peyrott";
        maintainer = "pseus7+mpvguihs@gmail.com";
        author = "Sebastián E. Peyrott";
        homepage = "https://github.com/sebadoom/mpvguihs";
        url = "";
        synopsis = "A minimalist mpv GUI written in I/O heavy Haskell.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          mpvguihs = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.template-haskell
              hsPkgs.process
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.mtl
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      use_xft = true;
      testing = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "xmonad-contrib";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "spencerjanssen@gmail.com";
        author = "Spencer Janssen";
        homepage = "http://xmonad.org/";
        url = "";
        synopsis = "Third party extensions for xmonad";
        description = "Third party tiling algorithms, configurations and scripts to xmonad,\na tiling window manager for X.\n\nFor an introduction to building, configuring and using xmonad\nextensions, see \"XMonad.Doc\". In particular:\n\n\"XMonad.Doc.Configuring\", a guide to configuring xmonad\n\n\"XMonad.Doc.Extending\", using the contributed extensions library\n\n\"XMonad.Doc.Developing\", introduction to xmonad internals and writing\nyour own extensions.\n";
        buildType = "Simple";
      };
      components = {
        xmonad-contrib = {
          depends  = ([
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.X11
            hsPkgs.xmonad
            hsPkgs.xmonad
            hsPkgs.utf8-string
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.random
              hsPkgs.old-time
              hsPkgs.old-locale
            ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optionals _flags.use_xft [
            hsPkgs.X11-xft
            hsPkgs.utf8-string
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
      use_xft = true;
      testing = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.1";
        identifier = {
          name = "xmonad-contrib-bluetilebranch";
          version = "0.9.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jan.vornberger@informatik.uni-oldenburg.de";
        author = "Spencer Janssen";
        homepage = "http://xmonad.org/";
        url = "";
        synopsis = "Third party extensions for xmonad";
        description = "This is a modified version of xmonad-contrib used by Bluetile.";
        buildType = "Simple";
      };
      components = {
        "xmonad-contrib-bluetilebranch" = {
          depends  = ([
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.X11
            hsPkgs.xmonad-bluetilebranch
            hsPkgs.xmonad-bluetilebranch
            hsPkgs.utf8-string
          ] ++ (if _flags.small_base
            then [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.extensible-exceptions
              hsPkgs.old-locale
              hsPkgs.old-time
              hsPkgs.process
              hsPkgs.random
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
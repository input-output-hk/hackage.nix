{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "himerge";
          version = "0.20";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "araujo@gentoo.org";
        author = "Luis Francisco Araujo";
        homepage = "http://www.haskell.org/himerge";
        url = "";
        synopsis = "Haskell Graphical User Interface for Emerge";
        description = "Himerge is a graphical user interface for emerge (Gentoo's Portage system)\nwritten in Haskell using gtk2hs.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "himerge" = {
            depends  = [
              hsPkgs.haskell98
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.old-time
              hsPkgs.parallel
              hsPkgs.gtk
              hsPkgs.mozembed
              hsPkgs.glib
            ];
          };
        };
      };
    }
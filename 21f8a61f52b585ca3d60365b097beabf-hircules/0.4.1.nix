{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hircules";
          version = "0.4.1";
        };
        license = "LicenseRef-GPL";
        copyright = "2003, 2004, 2006, 2008-2010 Jens-Ulrik Petersen <petersen@haskell.org>\n2003 Andrew J. Bromage";
        maintainer = "Jens Petersen <petersen@haskell.org>";
        author = "Jens Petersen <petersen@haskell.org>";
        homepage = "";
        url = "";
        synopsis = "IRC client";
        description = "Hircules is an IRC (Internet Relay Chat) client with a gtk GUI.\n\nSee the old project page http://haskell.org/hircules for more info.\n\nSummary of changes:\n\n0.4.1: update the gtk version dependency\n\n0.4: build updates for ghc-6.12 and gtk-0.11";
        buildType = "Simple";
      };
      components = {
        exes = {
          hircules = {
            depends  = [
              hsPkgs.base
              hsPkgs.gtk
              hsPkgs.utf8-string
              hsPkgs.time
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.directory
              hsPkgs.network
              hsPkgs.old-time
              hsPkgs.old-locale
            ];
          };
        };
      };
    }
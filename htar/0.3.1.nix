{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base3 = true;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "htar";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2007 Bjorn Bringert <bjorn@bringert.net>\n2008-2009 Duncan Coutts <duncan@haskell.org>";
        maintainer = "Duncan Coutts <duncan@haskell.org>";
        author = "Bjorn Bringert <bjorn@bringert.net>\nDuncan Coutts <duncan@haskell.org>";
        homepage = "";
        url = "";
        synopsis = "Command-line tar archive utility.";
        description = "A Command-line utility to create, extract and list the\ncontents of tar archives. It can work with compressed\narchives using gzip or bzip2 compression.";
        buildType = "Simple";
      };
      components = {
        exes = {
          htar = {
            depends  = [
              hsPkgs.base
              hsPkgs.tar
              hsPkgs.zlib
              hsPkgs.bzlib
              hsPkgs.filepath
            ] ++ (if _flags.base3
              then [
                hsPkgs.base
                hsPkgs.old-time
                hsPkgs.old-locale
                hsPkgs.directory
                hsPkgs.bytestring
              ]
              else [ hsPkgs.base ]);
          };
        };
      };
    }
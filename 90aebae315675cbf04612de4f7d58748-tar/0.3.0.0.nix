{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base3 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "tar";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2007 Bjorn Bringert <bjorn@bringert.net>\n2008-2009 Duncan Coutts <duncan@haskell.org>";
        maintainer = "Duncan Coutts <duncan@haskell.org>";
        author = "Bjorn Bringert <bjorn@bringert.net>\nDuncan Coutts <duncan@haskell.org>";
        homepage = "";
        url = "";
        synopsis = "Reading, writing and manipulating \".tar\" archive files.";
        description = "This library is for working with \\\"@.tar@\\\" archive files. It\ncan read and write a range of common variations of archive\nformat including V7, USTAR, POSIX and GNU formats. It provides\nsupport for packing and unpacking portable archives. This\nmakes it suitable for distribution but not backup because\ndetails like file ownership and exact permissions are not\npreserved.";
        buildType = "Simple";
      };
      components = {
        tar = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
          ] ++ (if _flags.base3
            then [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.old-time
              hsPkgs.bytestring
            ]
            else [ hsPkgs.base ]);
        };
      };
    }
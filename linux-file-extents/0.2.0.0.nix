{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "linux-file-extents";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
        author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
        homepage = "https://github.com/redneb/linux-file-extents";
        url = "";
        synopsis = "Retrieve file fragmentation information under Linux";
        description = "This package provides a simple wrapper around the Linux FIEMAP ioctl.\nIt can be used to retrieve the list of all the extents of any given\nfile, i.e. the area of the disk where the file is actually stored. This is\nsimilar to the @filefrag@ command line tool provided by the @e2fsprogs@\npackage.";
        buildType = "Simple";
      };
      components = {
        linux-file-extents = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
        exes = {
          print-extents = {
            depends  = optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.linux-file-extents
            ];
          };
        };
      };
    }
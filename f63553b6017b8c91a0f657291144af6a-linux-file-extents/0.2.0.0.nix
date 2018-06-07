{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      flags = _flags;
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
          build-tools = [
            hsPkgs.buildPackages.hsc2hs
          ];
        };
        exes = {
          print-extents = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.base
              hsPkgs.linux-file-extents
            ];
          };
        };
      };
    }
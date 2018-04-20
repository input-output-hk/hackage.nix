{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "zip-archive";
          version = "0.1.1.5";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "";
        url = "";
        synopsis = "Library for creating and modifying zip archives.";
        description = "The zip-archive library provides functions for creating, modifying,\nand extracting files from zip archives.";
        buildType = "Simple";
      };
      components = {
        zip-archive = {
          depends  = ([
            hsPkgs.binary
            hsPkgs.zlib
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.utf8-string
            hsPkgs.old-time
            hsPkgs.digest
          ] ++ (if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.pretty
              hsPkgs.containers
            ]
            else [
              hsPkgs.base
            ])) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
        exes = { Zip = {}; };
      };
    }
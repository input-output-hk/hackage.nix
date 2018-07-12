{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zip-archive";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://github.com/jgm/zip-archive";
        url = "";
        synopsis = "Library for creating and modifying zip archives.";
        description = "The zip-archive library provides functions for creating, modifying,\nand extracting files from zip archives.";
        buildType = "Simple";
      };
      components = {
        "zip-archive" = {
          depends  = ([
            hsPkgs.binary
            hsPkgs.zlib
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.utf8-string
            hsPkgs.old-time
            hsPkgs.digest
            hsPkgs.directory
            hsPkgs.time
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
        exes = { "Zip" = {}; };
        tests = {
          "test-zip-archive" = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.time
              hsPkgs.old-time
              hsPkgs.HUnit
              hsPkgs.zip-archive
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
      executable = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zip-archive";
          version = "0.3.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jgm@berkeley.edu";
        author = "John MacFarlane";
        homepage = "http://github.com/jgm/zip-archive";
        url = "";
        synopsis = "Library for creating and modifying zip archives.";
        description = "The zip-archive library provides functions for creating, modifying,\nand extracting files from zip archives.";
        buildType = "Custom";
      };
      components = {
        zip-archive = {
          depends  = ([
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.zlib
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.text
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
        exes = {
          Zip = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.zip-archive
            ];
          };
        };
        tests = {
          test-zip-archive = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.process
              hsPkgs.time
              hsPkgs.old-time
              hsPkgs.HUnit
              hsPkgs.zip-archive
              hsPkgs.temporary
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
      };
    }
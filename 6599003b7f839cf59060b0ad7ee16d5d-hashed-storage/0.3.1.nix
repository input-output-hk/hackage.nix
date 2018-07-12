{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hashed-storage";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2009 Petr Rockai <me@mornfall.net>";
        maintainer = "Petr Rockai <me@mornfall.net>";
        author = "Petr Rockai <me@mornfall.net>";
        homepage = "";
        url = "";
        synopsis = "Hashed file storage support code.";
        description = "Support code for reading and manipulating hashed file storage\n(where each file and directory is associated with a\ncryptographic hash, for corruption-resistant storage and fast\ncomparisons).\n\nThe supported storage formats include darcs hashed pristine, a\nplain filesystem tree and an indexed plain tree (where the index\nmaintains hashes of the plain files and directories).  darcs'\npristine.hashed.";
        buildType = "Custom";
      };
      components = {
        "hashed-storage" = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.bytestring-mmap
            hsPkgs.zlib
            hsPkgs.lcs
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.extensible-exceptions
            hsPkgs.mmap
          ];
        };
        exes = {
          "hashed-storage-test" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.process
            ];
          };
        };
      };
    }
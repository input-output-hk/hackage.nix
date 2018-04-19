{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
      debug = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hit";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hit";
        url = "";
        synopsis = "Git operations in haskell";
        description = "\nAn haskell implementation of git storage operations, allowing users\nto manipulate git repositories (read and write).\n\nThis implementation is fully interoperable with the main C implementation.\n\nThis is stricly only manipulating the git store (what's inside the .git directory),\nand doesn't do anything with the index or your working directory files.\n";
        buildType = "Simple";
      };
      components = {
        hit = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.blaze-builder
            hsPkgs.attoparsec
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.cryptohash
            hsPkgs.vector
            hsPkgs.random
            hsPkgs.zlib
            hsPkgs.zlib-bindings
            hsPkgs.time
          ];
        };
        exes = {
          Hit = {
            depends  = optionals _flags.executable [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.hashable
              hsPkgs.hashtables
              hsPkgs.bytestring
              hsPkgs.attoparsec
              hsPkgs.parsec
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.hit
            ];
          };
        };
        tests = {
          test-unit = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.time
              hsPkgs.hit
            ];
          };
          test-repository = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.time
              hsPkgs.bytedump
              hsPkgs.hit
            ];
          };
        };
      };
    }
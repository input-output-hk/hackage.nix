{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      non-blocking-ffi = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zlib";
          version = "0.6.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2016 Duncan Coutts";
        maintainer = "Duncan Coutts <duncan@community.haskell.org>";
        author = "Duncan Coutts <duncan@community.haskell.org>";
        homepage = "";
        url = "";
        synopsis = "Compression and decompression in the gzip and zlib formats";
        description = "This package provides a pure interface for compressing and\ndecompressing streams of data represented as lazy\n'ByteString's. It uses the\n<https://en.wikipedia.org/wiki/Zlib zlib C library>\nso it has high performance. It supports the \\\"zlib\\\",\n\\\"gzip\\\" and \\\"raw\\\" compression formats.\n\nIt provides a convenient high level API suitable for most\ntasks and for the few cases where more control is needed it\nprovides access to the full zlib feature set.";
        buildType = "Simple";
      };
      components = {
        zlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
          libs = pkgs.lib.optional (!system.isWindows) pkgs.z;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.zlib
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lzma";
          version = "0.0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015, Herbert Valerio Riedel";
        maintainer = "hvr@gnu.org";
        author = "Herbert Valerio Riedel";
        homepage = "https://github.com/hvr/lzma";
        url = "";
        synopsis = "LZMA/XZ compression and decompression";
        description = "This package provides a pure interface for compressing and\ndecompressing\n<https://en.wikipedia.org/wiki/LZMA LZMA (Lempel–Ziv–Markov chain algorithm)>\nstreams of data represented as lazy @ByteString@s. A\nmonadic incremental interface is provided as well. This package\nrelies on the <http://tukaani.org/xz/ liblzma C library>.\n\nThe following packages are based on this package and provide\nAPI support for popular streaming frameworks:\n\n* </package/lzma-streams lzma-streams> (for </package/io-streams io-streams>)\n\n* </package/pipes-lzma pipes-lzma> (for </package/pipes pipes>)\n\n* </package/lzma-conduit lzma-conduit> (for </package/conduit conduit>)\n";
        buildType = "Simple";
      };
      components = {
        lzma = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.lzma-clib;
          libs = pkgs.lib.optional (!system.isWindows) pkgs.lzma;
        };
        tests = {
          lzma-tests = {
            depends  = [
              hsPkgs.lzma
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
            ];
          };
        };
      };
    }
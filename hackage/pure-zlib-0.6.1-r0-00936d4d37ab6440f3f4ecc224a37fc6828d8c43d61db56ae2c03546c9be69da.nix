{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pure-zlib";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awick@galois.com";
      author = "Adam Wick";
      homepage = "http://github.com/GaloisInc/pure-zlib";
      url = "";
      synopsis = "A Haskell-only implementation of zlib / DEFLATE";
      description = "A Haskell-only implementation of the zlib / DEFLATE\nprotocol. Currently only implements the decompression\nalgorithm.";
      buildType = "Simple";
    };
    components = {
      "pure-zlib" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-builder)
          (hsPkgs.containers)
          (hsPkgs.fingertree)
        ];
      };
      exes = {
        "deflate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.pure-zlib)
          ];
        };
      };
      tests = {
        "test-zlib" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.pure-zlib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
      benchmarks = {
        "bench-zlib" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.pure-zlib)
            (hsPkgs.time)
          ];
        };
      };
    };
  }
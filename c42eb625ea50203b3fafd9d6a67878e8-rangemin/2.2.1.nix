{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      llvm = false;
      wall = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "rangemin";
        version = "2.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wasserman.louis@gmail.com";
      author = "Louis Wasserman";
      homepage = "";
      url = "";
      synopsis = "Linear range-min algorithms.";
      description = "Rapidly (in linear time) preprocesses a vector so that the minimum element of any given subrange can be looked up in constant time.\n\nThis implementation is based on an algorithm of Fischer and Heun, which can be found at <http://dx.doi.org/10.1007/11780441_5>.\nDespite being written entirely in Haskell (and maintaining referential transparency internally), it is competitive against\nthe C++ implementation written by Fischer and Heun themselves (included in the tarball), especially when compiled with LLVM.\n\nDepending on the target system, this library compiled with -fasm approximately ties with the original authors'\nC++ implementation compiled with -O3 -funroll-loops.  With -fllvm -optlc-O3, this library has been observed to beat\nthe same C++ implementation by 20-30%.\n\nInternally, this library rolls its own stream fusion system, avoiding the @vector@ package's issues with duplicated index\nvariables and providing a few other special features.  This package's API does, however, fuse (to the extent possible) with\ninput vectors using the @vector@ package fusion system.  In particular, it automagically recognizes input vectors whose\nelement types have a natural order-preserving injection into @Int@, converts them, and uses the specialized range-min\nimplementation for @Int@ vectors.  See \"Data.RangeMin\" for more details.";
      buildType = "Simple";
    };
    components = {
      "rangemin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.primitive)
        ];
      };
    };
  }
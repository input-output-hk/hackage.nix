{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "bitwise";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Claude Heiland-Allen";
        maintainer = "claudiusmaximus@goto10.org";
        author = "Claude Heiland-Allen";
        homepage = "https://gitorious.org/bitwise";
        url = "";
        synopsis = "fast multi-dimensional unboxed bit packed Bool arrays";
        description = "Unboxed multidimensional bit packed Bool arrays with fast aggregate\noperations based on lifting Bool operations to bitwise operations.\n\nThere are many other bit packed structures out there, but none met\nall of these requirements:\n\n(1) unboxed bit packed Bool array,\n\n(2) multi-dimensional indexing,\n\n(3) fast (de)serialization, or interoperable with foreign code,\n\n(4) fast aggregate operations (fold, map, zip).\n\nQuick tour of the bitwise library:\n\n[Data.Bits.Bitwise] Lift boolean operations on 'Bool' to bitwise\noperations on 'Data.Bits.Bits'.\n\n[Data.Array.BitArray] Immutable bit arrays.\n\n[Data.Array.BitArray.ST] Mutable bit arrays in 'Control.Monad.ST.ST'.\n\n[Data.Array.BitArray.IO] Mutable bit arrays in 'IO'.\n\n[Data.Array.BitArray.ByteString] (De)serialization.\n\n[Codec.Image.PBM] Portable bitmap monochrome 2D image format.\n\nVery rough performance benchmarks:\n\n* immutable random access single bit reads:\n@BitArray ix@ is about 40% slower than @UArray ix Bool@,\n\n* 'Control.Monad.ST.ST' mutable random access single bit reads:\n@STBitArray s ix@ is about the same as @STUArray s ix Bool@,\n\n* immutable map @Bool -> Bool@:\n@BitArray ix@ is about 85x faster than @UArray ix Bool@,\n\n* immutable zipWith @Bool -> Bool -> Bool@:\n@BitArray ix@ is about 1300x faster than @UArray ix Bool@.";
        buildType = "Simple";
      };
      components = {
        bitwise = {
          depends  = ([
            hsPkgs.base
          ] ++ pkgs.lib.optionals compiler.isGhc [
            hsPkgs.bytestring
            hsPkgs.array
          ]) ++ pkgs.lib.optionals compiler.isGhc [
            hsPkgs.bytestring
            hsPkgs.array
          ];
        };
        tests = {
          bitwise-testsuite = {
            depends  = [
              hsPkgs.bitwise
              hsPkgs.base
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          bitwise-benchmark = {
            depends  = [
              hsPkgs.bitwise
              hsPkgs.base
              hsPkgs.array
              hsPkgs.bytestring
              hsPkgs.criterion
            ];
          };
        };
      };
    }
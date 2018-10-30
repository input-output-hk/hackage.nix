{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      small_base = false;
      use_sse2 = false;
      use_altivec = false;
      big_endian64 = false;
    };
    package = {
      specVersion = "1.2.0";
      identifier = {
        name = "mersenne-random";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011. Don Stewart <dons00@gmail.com>";
      maintainer = "Don Stewart <dons00@gmail.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/mersenne-random";
      url = "";
      synopsis = "Generate high quality pseudorandom numbers using a SIMD Fast Mersenne Twister";
      description = "The Mersenne twister is a pseudorandom number generator developed by\nMakoto Matsumoto and Takuji Nishimura that is based on a matrix linear\nrecurrence over a finite binary field. It provides for fast generation\nof very high quality pseudorandom numbers\n\nThis library uses SFMT, the SIMD-oriented Fast Mersenne Twister, a\nvariant of Mersenne Twister that is much faster than the original.\nIt is designed to be fast when it runs on 128-bit SIMD. It can be\ncompiled with either SSE2 and PowerPC AltiVec support, to take\nadvantage of these instructions.\n\n> cabal install -fuse_sse2\n\nOn an x86 system, for performance win.\n\nBy default the period of the function is 2^19937-1, however, you can\ncompile in other defaults. Note that this algorithm on its own\nis not cryptographically secure.\n\nFor more information about the algorithm and implementation, see\nthe SFMT homepage,\n\n<http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/emt.html>\n\nand, Mutsuo Saito and Makoto Matsumoto,\n/SIMD-oriented Fast Mersenne Twister: a 128-bit Pseudorandom Number\nGenerator/, in the Proceedings of MCQMC2006, here:\n\n<http://www.math.sci.hiroshima-u.ac.jp/~m-mat/MT/ARTICLES/sfmt.pdf>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.small_base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.old-time)
          ];
      };
    };
  }
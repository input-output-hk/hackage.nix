{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { llvm = true; };
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "ADPfusion";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011-2012";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, 2011-2012";
      homepage = "http://www.tbi.univie.ac.at/~choener/adpfusion";
      url = "";
      synopsis = "Efficient, high-level dynamic programming.";
      description = "ADPfusion combines stream-fusion (using the stream interface\nprovided by the vector library) and type-level programming to\nprovide highly efficient dynamic programming combinators.\n\nFrom the programmers' viewpoint, ADPfusion behaves very much\nlike the original ADP implementation\n<http://bibiserv.techfak.uni-bielefeld.de/adp/> developed by\nRobert Giegerich and colleagues, though both combinator\nsemantics and backtracking are different.\n\nThe library internals, however, are designed not only to speed\nup ADP by a large margin (which this library does), but also to\nprovide further runtime improvements by allowing the programmer\nto switch over to other kinds of data structures with better\ntime and space behaviour. Most importantly, dynamic programming\ntables can be strict, removing indirections present in lazy,\nboxed tables.\n\nAs an example, even rather complex ADP code tends to be\ncompletely optimized to loops that use only unboxed variables\n(Int# and others, indexIntArray# and others).\n\nCompletely novel (compared to ADP), is the idea of allowing\nefficient monadic combinators. This facilitates writing code\nthat performs backtracking, or samples structures\nstochastically, among others things.\n\nThis version is still highly experimental and makes use of\nmultiple recent improvements in GHC. This is particularly true\nfor the monadic interface.\n\nLong term goals: Outer indices with more than two dimensions,\nspecialized table design, a combinator library, a library for\ncomputational biology.\n\nTwo algorithms from the realm of computational biology are\nprovided as examples on how to write dynamic programming\nalgorithms using this library:\n<http://hackage.haskell.org/package/Nussinov78> and\n<http://hackage.haskell.org/package/RNAFold>.\n\nChanges since 0.0.1.0:\n\n* compatibility with GHC 7.4\n\n* note: still using fundeps & and TFs together. The TF-only version does not optimize as well (I know why but not yet how to fix it)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.vector)
          (hsPkgs.PrimitiveArray)
        ];
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "ADPfusion";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2011-2013";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, 2011-2013";
      homepage = "http://www.tbi.univie.ac.at/~choener/adpfusion";
      url = "";
      synopsis = "Efficient, high-level dynamic programming.";
      description = "ADPfusion combines stream-fusion (using the stream interface\nprovided by the vector library) and type-level programming to\nprovide highly efficient dynamic programming combinators.\n\nFrom the programmers' viewpoint, ADPfusion behaves very much\nlike the original ADP implementation\n<http://bibiserv.techfak.uni-bielefeld.de/adp/> developed by\nRobert Giegerich and colleagues, though both combinator\nsemantics and backtracking are different.\n\nThe library internals, however, are designed not only to speed\nup ADP by a large margin (which this library does), but also to\nprovide further runtime improvements by allowing the programmer\nto switch over to other kinds of data structures with better\ntime and space behaviour. Most importantly, dynamic programming\ntables can be strict, removing indirections present in lazy,\nboxed tables.\n\nAs a simple benchmark, consider the Nussinov78 algorithm which\ntranslates to three nested for loops (for C). In the figure,\nfour different approaches are compared using inputs with size\n100 characters to 1000 characters in increments of 100\ncharacters. \"C\" is an implementation (@./C/@ directory) in \"C\"\nusing \"gcc -O3\". \"ADP\" is the original ADP approach (see link\nabove), while \"GAPC\" uses the \"GAP\" language\n(<http://gapc.eu/>).\n\n<<http://www.tbi.univie.ac.at/~choener/adpfusion/gaplike-nussinov-runtime.jpg>>\n\nPlease note that actual performance will depend much on table\nlayout and data structures accessed during calculations, but in\ngeneral performance is very good: close to C and better than\nother high-level approaches (that I know of).\n\n\n\nEven complex ADP code tends to be completely optimized to loops\nthat use only unboxed variables (Int# and others,\nindexIntArray# and others).\n\nCompletely novel (compared to ADP), is the idea of allowing\nefficient monadic combinators. This facilitates writing code\nthat performs backtracking, or samples structures\nstochastically, among others things.\n\n\n\nTwo algorithms from the realm of computational biology are\nprovided as examples on how to write dynamic programming\nalgorithms using this library:\n<http://hackage.haskell.org/package/Nussinov78> and\n<http://hackage.haskell.org/package/RNAFold>.";
      buildType = "Simple";
    };
    components = {
      "ADPfusion" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.primitive)
          (hsPkgs.PrimitiveArray)
          (hsPkgs.QuickCheck)
          (hsPkgs.repa)
          (hsPkgs.strict)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "NeedlemanWunsch" = {};
      };
    };
  }
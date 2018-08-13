{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "bio";
        version = "0.3.3.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "ketil@ii.uib.no";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/";
      url = "";
      synopsis = "A bioinformatics library";
      description = "This is a collection of data structures and algorithms\nI've found useful when building various bioinformatics-related tools\nand utilities.\n\nCurrent list of features includes: a Sequence data type supporting\nprotein and nucleotide sequences and conversion between them, quality\ndata, reading and writing Fasta formatted files, reading TwoBit and\nphd formats.  Rudimentary support for doing alignments - including\ndynamic adjustment of scores based on sequence quality - and Blast\noutput parsing.  Partly implemented single linkage clustering, and\nmultiple alignment.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/biolib>.";
      buildType = "Simple";
    };
    components = {
      "bio" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.QuickCheck)
          (hsPkgs.binary)
          (hsPkgs.tagsoup)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
        ];
      };
    };
  }
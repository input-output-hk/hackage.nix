{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "bio";
          version = "0.4.6";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "ketil@ii.uib.no";
        author = "Ketil Malde";
        homepage = "http://blog.malde.org/index.php/the-haskell-bioinformatics-library/";
        url = "";
        synopsis = "A bioinformatics library";
        description = "This is a collection of data structures and algorithms\nuseful for building bioinformatics-related tools\nand utilities.\n\nCurrent list of features includes: a Sequence data type supporting\nprotein and nucleotide sequences and conversion between them.  As of version\n0.4, different kinds of sequence have different types.  Support for quality\ndata, reading and writing Fasta formatted files, reading TwoBit and\nphd formats, and Roche/454 SFF files.  Rudimentary (i.e. unoptimized) support\nfor doing alignments - including dynamic adjustment of scores based on sequence quality.\nAlso Blast output parsing.  Partly implemented single linkage clustering, and\nmultiple alignment.  Reading Gene Ontology (GO) annotations (GOA) and\ndefinitions\\/hierarchy.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/biolib>.";
        buildType = "Simple";
      };
      components = {
        bio = {
          depends  = [
            hsPkgs.base
            hsPkgs.QuickCheck
            hsPkgs.binary
            hsPkgs.tagsoup
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.parallel
            hsPkgs.parsec
            hsPkgs.random
            hsPkgs.old-time
            hsPkgs.mtl
          ];
        };
      };
    }
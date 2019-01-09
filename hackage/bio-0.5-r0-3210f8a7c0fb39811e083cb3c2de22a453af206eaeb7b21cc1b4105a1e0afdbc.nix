{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; examples = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bio"; version = "0.5"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "ketil@malde.org";
      author = "Ketil Malde";
      homepage = "http://biohaskell.org/Libraries/Bio";
      url = "";
      synopsis = "A bioinformatics library";
      description = "This is a collection of data structures and algorithms\nuseful for building bioinformatics-related tools\nand utilities.\n\nCurrent list of features includes: a Sequence data type supporting\nprotein and nucleotide sequences and conversion between them.  As of version\n0.4, different kinds of sequence have different types.  Support for quality\ndata, reading and writing Fasta formatted files, reading TwoBit and\nphd formats, and Roche/454 SFF files.  Rudimentary (i.e. unoptimized) support\nfor doing alignments - including dynamic adjustment of scores based on sequence quality.\nAlso Blast output parsing.  Partly implemented single linkage clustering, and\nmultiple alignment.  Reading Gene Ontology (GO) annotations (GOA) and\ndefinitions\\/hierarchy.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/biolib>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.tagsoup)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.array)
          (hsPkgs.parallel)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          ];
        };
      exes = {
        "qc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.old-time)
            ];
          };
        "flx" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
        "fastout" = { depends = [ (hsPkgs.base) ]; };
        "frecover" = { depends = [ (hsPkgs.base) ]; };
        "frename" = { depends = [ (hsPkgs.base) (hsPkgs.bytestring) ]; };
        };
      };
    }
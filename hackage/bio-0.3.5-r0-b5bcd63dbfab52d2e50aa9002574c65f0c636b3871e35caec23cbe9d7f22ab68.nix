{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "bio"; version = "0.3.5"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "ketil@ii.uib.no";
      author = "Ketil Malde";
      homepage = "http://blog.malde.org/index.php/the-haskell-bioinformatics-library/";
      url = "";
      synopsis = "A bioinformatics library";
      description = "This is a collection of data structures and algorithms\nI've found useful when building various bioinformatics-related tools\nand utilities.\n\nCurrent list of features includes: a Sequence data type supporting\nprotein and nucleotide sequences and conversion between them, quality\ndata, reading and writing Fasta formatted files, reading TwoBit and\nphd formats.  Rudimentary support for doing alignments - including\ndynamic adjustment of scores based on sequence quality - and Blast\noutput parsing.  Partly implemented single linkage clustering, and\nmultiple alignment.  Reading Gene Ontology (GO) annotations (GOA) and\ndefinitions\\/hierarchy.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/biolib>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }
let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "bio"; version = "0.4.4"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."tagsoup" or (buildDepError "tagsoup"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }
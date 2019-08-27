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
      specVersion = "1.4.0";
      identifier = { name = "Biobase"; version = "0.3.1.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010,2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "Base library for bioinformatics";
      description = "Base library for bioinformatics providing the following features:\n\nRNA sequences and energy files:\n\n* efficient format for RNA sequences, based on the vector package\n\n* internal conversion from strings and bytestrings\n\n* secondary structure manipulation functions, im- and export of Vienna-dotbracket notation\n\n\n\nUtility classes:\n\n* algebraic ring class\n\n* instances for Gibbs free energy, partition function probabilities, and scores\n\n* conversion between different entities\n\n\n\nBioinformatics data sources:\n\n* mostly just imports, some export functions are provided\n\n* Fasta (please use the \"bio\" library by Ketil Malde)\n\n* Mafft\n\n* RNA secondary structure: Dot-Bracket, CT\n\n* ViennaRNA energy files (with default parameters)\n\n* Turner energy files: cf. <http://rna.urmc.rochester.edu/NNDB/index.html>\n\n* RNAstrand database: dot-parenthesis (one file, many entries)\n\n* FR3D: basepairs\n\n* Infernal: covariance models (text-based)\n\n* MC-Fold: NCM database\n\n\n\nImportant notes:\n\n* In general, this library is not unicode safe (and could somebody tell me the reason for encoding DNA/RNA sequences in unicode?)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
          (hsPkgs."HsTools" or (buildDepError "HsTools"))
          (hsPkgs."ParsecTools" or (buildDepError "ParsecTools"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          (hsPkgs."vector-read-instances" or (buildDepError "vector-read-instances"))
          ];
        };
      };
    }
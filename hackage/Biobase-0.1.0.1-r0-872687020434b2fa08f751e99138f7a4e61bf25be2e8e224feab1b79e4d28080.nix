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
      identifier = { name = "Biobase"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/Haskell/";
      url = "";
      synopsis = "Base library for bioinformatics";
      description = "Base library for bioinformatics providing the following features:\n\n* RNA primary and secondary structure\n\n* Infernal covariance models\n\n* Turner and Vienna energy files\n\n\n\nRNA sequences and energy files:\n\n* efficient format for RNA sequences, based on the vector package\n\n* import from strings, bytestrings, fasta files (using the bio library)\n\n* secondary structure manipulation functions, im- and export of Vienna-dotbracket notation\n\n* import Turner energy files\n\n* cf. http://rna.urmc.rochester.edu/NNDB/index.html\n\n* im- and export of Vienna 2.0 energy files\n\n\n\nCovariance models:\n\n* import covariance models\n\n* basic manipulation of covariance models\n\n* Stockholm file format manipulation\n\n\n\nUtility classes:\n\n* algebraic ring class\n\n* instances for Gibbs free energy, partition function probabilities, and scores\n\n* conversion between different entities\n\n* ready for the vector library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."file-embed" or (buildDepError "file-embed"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."HsTools" or (buildDepError "HsTools"))
          (hsPkgs."ParsecTools" or (buildDepError "ParsecTools"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          ];
        };
      };
    }
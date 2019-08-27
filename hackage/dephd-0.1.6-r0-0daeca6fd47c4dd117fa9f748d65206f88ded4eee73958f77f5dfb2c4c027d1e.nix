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
      specVersion = "1.6";
      identifier = { name = "dephd"; version = "0.1.6"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/biohaskell/dephd";
      url = "";
      synopsis = "Analyze quality of nucleotide sequences.";
      description = "dephd - A simple tool for base calling and quality appraisal.\n\nReads files in phd-format (phred output), either specified individually,\nor in a directory (use the --input-dirs option to read directories\nor --input-list to read from an index file).  Can also read FASTA with an\nassociated quality file.\n\nCan trim according to Lucy or Phred parameters, can mask by quality, can plot\ngraphs (via gnuplot) of sequence quality to a window, or to JPG/EPS files.  Can\ncategorize sequences according to overall quality.  Also constructs files suitable for\nsubmission to dbEST.  More information at <http://blog.malde.org/index.php/2010/09/07/submitting-ests-upstream/>.\n\nAlso provides 'fakequal', a utility to generate bogus quality values,\nwhich are sometimes needed by less flexible tools.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/dephd>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dephd" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bio" or (buildDepError "bio"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        "fakequal" = {
          depends = [
            (hsPkgs."bio" or (buildDepError "bio"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        };
      };
    }
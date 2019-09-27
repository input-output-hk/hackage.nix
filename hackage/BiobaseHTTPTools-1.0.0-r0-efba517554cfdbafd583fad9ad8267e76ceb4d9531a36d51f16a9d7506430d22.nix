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
      specVersion = "1.8";
      identifier = { name = "BiobaseHTTPTools"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Tools to query Bioinformatics HTTP services e.g. Entrez, Ensembl.";
      description = "BiobaseHTTP provides tools to interface the Bioinformatics REST services, currently Entrez, Ensembl.\n\nUsage instructions can be found in the <https://github.com/eggzilla/BiobaseHTTPTools README>\n\nCurrently following Tools are included:\n\n* FetchSequences:\nRetrieves sequence in fasta format\n\n* AccessionToTaxId:\nConverts NCBI accession number to taxonomy id\n\n* GeneIdToGOTerms:\nRetrieve GOterms for a Ensembl GeneId\n\n* GeneIdToUniProtId\nRetrieves UniProtId for a Ensembl GeneId";
      buildType = "Simple";
      };
    components = {
      exes = {
        "FetchSequence" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseHTTP" or (buildDepError "BiobaseHTTP"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."BiobaseFasta" or (buildDepError "BiobaseFasta"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "AccessionToTaxId" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseHTTP" or (buildDepError "BiobaseHTTP"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            ];
          buildable = true;
          };
        "GeneIdToUniProtId" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseHTTP" or (buildDepError "BiobaseHTTP"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "GeneIdToGOTerms" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseHTTP" or (buildDepError "BiobaseHTTP"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
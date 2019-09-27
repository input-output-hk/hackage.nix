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
      identifier = { name = "TaxonomyTools"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Tool for parsing, processing, comparing and visualizing taxonomy data";
      description = "Taxonomy Tool utilizes functions from the Taxonomy library to provide\n\nseveral commandline utilities for routine-tasks with taxonomy data.\n\nCurrently some tools accept either the <ftp://ftp.ncbi.nih.gov/pub/taxonomy/ NCBI taxonomy dump> as input,\n\nwhile other retrieve the data directly from the <http://www.ncbi.nlm.nih.gov/gquery/ NCBI Entrez REST> interface.\n\nIt is planned to support both datasources with each tool.\n\nUsage instructions can be found in the <https://github.com/eggzilla/TaxonomyTools README>\n\nCurrently following Tools are included:\n\n* Accessions2TaxIds:\nConverts a list of NCBI accession numbers into NCBI taxonomy ids\n\n* TaxIds2Tree:\nList of taxonomy ids is converted into a graphical tree representation\neither as .svg (via graphviz) or as .json (via d3js).\n\n* TaxIds2TreeCompare:\nMultiple lists of taxonomy ids are converted into a visualisation of the\ntaxonomic tree highlighting the input nodes corresponding to their list.\n\n* TaxIds2Text:\nList of taxonomy ids is converted in a short text summary for each node.\n\n* TreeDistance:\nComputes the distance between two input nodes on the given tree.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "TaxIds2Text" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."Taxonomy" or (buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "Accessions2TaxIds" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Taxonomy" or (buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."EntrezHTTP" or (buildDepError "EntrezHTTP"))
            (hsPkgs."hxt" or (buildDepError "hxt"))
            ];
          buildable = true;
          };
        "TaxIds2TreeCompare" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Taxonomy" or (buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "TaxIds2Tree" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Taxonomy" or (buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          buildable = true;
          };
        "TaxIdsDistance" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Taxonomy" or (buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }
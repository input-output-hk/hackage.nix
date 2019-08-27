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
      identifier = { name = "Genbank"; version = "1.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for processing the NCBI genbank format";
      description = "Haskell cabal Genbank libary contains tools, parser and datastructures for the NCBI (National Center for Biotechnology Information) Genbank format.\n\nFor more information on genbank refer to: <http://www.ncbi.nlm.nih.gov/genbank/>\n\nFor a sample genbank record see: <http://www.ncbi.nlm.nih.gov/Sitemap/samplerecord.html>\n\n\"Bio.GenbankData\" - Datastructures for Genbank format\n\nContains Haskell datastructures for Genbank format and for contained features, subfeatures\n\n\"Bio.GenbankParser\" - Parse Genbank format\n\nContains Haskell functions to parse Genbank format from files or internal Strings.\n\n\"Bio.GenbankTools\" - Tools for processing Genbank\n\nContains Haskell functions to extract nucleotide sequences for features";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."biocore" or (buildDepError "biocore"))
          (hsPkgs."biofasta" or (buildDepError "biofasta"))
          ];
        };
      };
    }
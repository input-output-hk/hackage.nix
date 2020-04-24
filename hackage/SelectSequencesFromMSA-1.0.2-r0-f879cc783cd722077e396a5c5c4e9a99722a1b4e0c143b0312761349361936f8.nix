{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "SelectSequencesFromMSA"; version = "1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "SelectSequences is a tool for selection of a represenative subset of sequences from a multiple sequence alignment in clustal format.";
      description = "SelectSequences is a tool for selection of a represenative subset of sequences from a multiple sequence alignment in clustal format.\n\nOptional Dependencies:\n\n* <https://www.tbi.univie.ac.at/~wash/RNAz/ RNAz>\nInstallation via cabal-install:\n\n> cabal install SelectSequencesFromMSA";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."ViennaRNAParser" or ((hsPkgs.pkgs-errors).buildDepError "ViennaRNAParser"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."biofasta" or ((hsPkgs.pkgs-errors).buildDepError "biofasta"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."biocore" or ((hsPkgs.pkgs-errors).buildDepError "biocore"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ClustalParser" or ((hsPkgs.pkgs-errors).buildDepError "ClustalParser"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."text-metrics" or ((hsPkgs.pkgs-errors).buildDepError "text-metrics"))
          ];
        buildable = true;
        };
      exes = {
        "SelectSequencesFromMSA" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."SelectSequencesFromMSA" or ((hsPkgs.pkgs-errors).buildDepError "SelectSequencesFromMSA"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }
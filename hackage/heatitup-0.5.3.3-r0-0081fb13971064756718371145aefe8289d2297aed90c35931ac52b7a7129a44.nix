{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heatitup"; version = "0.5.3.3"; };
      license = "GPL-3.0-only";
      copyright = "2018 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/heatitup#readme";
      url = "";
      synopsis = "Find and annotate ITDs.";
      description = "Find and annotate ITDs using suffix trees and characterize the exogenous segments within the spacer using heat diffusion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-show" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-show"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
          (hsPkgs."fasta" or ((hsPkgs.pkgs-errors).buildDepError "fasta"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-csv" or ((hsPkgs.pkgs-errors).buildDepError "pipes-csv"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."string-similarity" or ((hsPkgs.pkgs-errors).buildDepError "string-similarity"))
          (hsPkgs."stringsearch" or ((hsPkgs.pkgs-errors).buildDepError "stringsearch"))
          (hsPkgs."suffixtree" or ((hsPkgs.pkgs-errors).buildDepError "suffixtree"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "heatitup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."heatitup" or ((hsPkgs.pkgs-errors).buildDepError "heatitup"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."diagrams-core" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-core"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-pgf" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-pgf"))
            (hsPkgs."diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-svg"))
            (hsPkgs."diagrams-html5" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-html5"))
            (hsPkgs."diagrams-rasterific" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-rasterific"))
            (hsPkgs."fasta" or ((hsPkgs.pkgs-errors).buildDepError "fasta"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-csv" or ((hsPkgs.pkgs-errors).buildDepError "pipes-csv"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }
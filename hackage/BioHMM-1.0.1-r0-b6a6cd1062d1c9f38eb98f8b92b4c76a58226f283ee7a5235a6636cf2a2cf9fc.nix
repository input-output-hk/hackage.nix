{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "BioHMM"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary containing parsing and visualisation functions and datastructures for Hidden Markov Models in HMMER3 format.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."ParsecTools" or ((hsPkgs.pkgs-errors).buildDepError "ParsecTools"))
          (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
          (hsPkgs."SVGFonts" or ((hsPkgs.pkgs-errors).buildDepError "SVGFonts"))
          (hsPkgs."StockholmAlignment" or ((hsPkgs.pkgs-errors).buildDepError "StockholmAlignment"))
          ];
        buildable = true;
        };
      };
    }
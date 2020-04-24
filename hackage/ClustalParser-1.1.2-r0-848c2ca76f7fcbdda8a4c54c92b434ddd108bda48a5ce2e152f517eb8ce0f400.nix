{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ClustalParser"; version = "1.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for parsing Clustal tools output";
      description = "Currently contains parsers and datatypes for: clustalw2, clustalo, mlocarna, cmalign\n\nClustal tools are multiple sequence alignment tools for biological sequence like DNA, RNA and Protein.\nFor more information on clustal Tools refer to <http://www.clustal.org/>.\n\nMlocarna is a multiple sequence alignment tool for RNA sequences with secondary structure output.\nFor more information on mlocarna refer to <http://www.bioinf.uni-freiburg.de/Software/LocARNA/>.\n\nCmalign is a multiple sequence alignment program based on RNA family models and produces\n,among others, clustal output. It is part of infernal <http://infernal.janelia.org/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "ClustalParserTest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."ClustalParser" or ((hsPkgs.pkgs-errors).buildDepError "ClustalParser"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."ClustalParser" or ((hsPkgs.pkgs-errors).buildDepError "ClustalParser"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
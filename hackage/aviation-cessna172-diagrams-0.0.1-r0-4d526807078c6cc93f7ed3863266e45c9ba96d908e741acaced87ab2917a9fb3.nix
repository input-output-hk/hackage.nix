{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "aviation-cessna172-diagrams"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2016, Commonwealth Scientific and Industrial Research Organisation (CSIRO) ABN 41 687 119 230.";
      maintainer = "Tony Morris, Joshua Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>, Joshua Morris <ɯoɔ˙lᴉɐɯƃ@llǝʞsɐɥ+sᴉɹɹoɯuɥoɾɐnɥsoɾ>";
      homepage = "https://github.com/data61/aviation-cessna172-diagrams";
      url = "";
      synopsis = "Diagrams for the Cessna 172 aircraft in aviation.";
      description = "<<http://i.imgur.com/0h9dFhl.png>>\n\nDiagrams for the Cessna 172 aircraft in aviation.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."aviation-units" or ((hsPkgs.pkgs-errors).buildDepError "aviation-units"))
          (hsPkgs."aviation-weight-balance" or ((hsPkgs.pkgs-errors).buildDepError "aviation-weight-balance"))
          (hsPkgs."aviation-cessna172-weight-balance" or ((hsPkgs.pkgs-errors).buildDepError "aviation-cessna172-weight-balance"))
          (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-core" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."plots" or ((hsPkgs.pkgs-errors).buildDepError "plots"))
          (hsPkgs."hgeometry" or ((hsPkgs.pkgs-errors).buildDepError "hgeometry"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."quickcheck-text" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-text"))
            ];
          buildable = true;
          };
        };
      };
    }
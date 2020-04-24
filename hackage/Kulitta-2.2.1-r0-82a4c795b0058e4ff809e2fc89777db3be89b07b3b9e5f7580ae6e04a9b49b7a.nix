{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "Kulitta"; version = "2.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2016 Donya Quick";
      maintainer = "Donya Quick <donya.quick@yale.edu>";
      author = "Donya Quick <donya.quick@yale.edu>";
      homepage = "http://www.donyaquick.com/kulitta";
      url = "";
      synopsis = "Library for automated composition and musical learning";
      description = "Kulitta is a framework for automated composition that can also\nbe configured to run as a standalone AI for generating music\nin a particular style.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."Euterpea" or ((hsPkgs.pkgs-errors).buildDepError "Euterpea"))
          (hsPkgs."UISF" or ((hsPkgs.pkgs-errors).buildDepError "UISF"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          ];
        buildable = true;
        };
      };
    }
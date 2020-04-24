{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "FermatsLastMargin"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Shae Erisson <shae@ScannedInAvian.com>";
      author = "Shae Erisson";
      homepage = "http://www.scannedinavian.com/";
      url = "";
      synopsis = "Annotate ps and pdf documents";
      description = "Distributed annotation for PostScript and PDF documents.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flm" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."syb-with-class" or ((hsPkgs.pkgs-errors).buildDepError "syb-with-class"))
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."HAppS-Data" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Data"))
            (hsPkgs."HAppS-State" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-State"))
            (hsPkgs."HAppS-Server" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Server"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."HAppS-IxSet" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-IxSet"))
            (hsPkgs."HAppS-Util" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Util"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "HAppS-IxSet"; version = "0.9.2"; };
      license = "BSD-3-Clause";
      copyright = "2007 HAppS LLC";
      maintainer = "AlexJacobson@HAppS.org";
      author = "Alex Jacobson, Einar Karttunen";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Web framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."HAppS-Util" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Util"))
          (hsPkgs."HAppS-State" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-State"))
          (hsPkgs."HAppS-Data" or ((hsPkgs.pkgs-errors).buildDepError "HAppS-Data"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."syb-with-class" or ((hsPkgs.pkgs-errors).buildDepError "syb-with-class"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }
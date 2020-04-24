{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      new-data-object = true;
      new-template-haskell = true;
      haxml_1_13 = false;
      };
    package = {
      specVersion = "1.2";
      identifier = { name = "property-list"; version = "0.0.0.7"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/property-list";
      url = "";
      synopsis = "XML property list parser";
      description = "Parser, data type and formatter for Apple's XML property list 1.0 format.\nThe bytestring-0.9.1.5 update on hackage seems to have\ncratered the build for many packages, including the last\nseveral versions of this one, so this version will\nprobably not build properly on the hackage site.\nAs far as I know, though, that is the only reason\nit fails. This version includes a hack to try to make\nit build on the site, triggered by the HaXml_1_13 build flag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-class" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-class"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."th-fold" or ((hsPkgs.pkgs-errors).buildDepError "th-fold"))
          ] ++ [
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ]) ++ [
          (hsPkgs."data-object" or ((hsPkgs.pkgs-errors).buildDepError "data-object"))
          ]) ++ (if flags.haxml_1_13
          then [
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-class" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-class"))
            (hsPkgs."data-object" or ((hsPkgs.pkgs-errors).buildDepError "data-object"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ]
          else [
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            ]);
        buildable = true;
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { haxml_1_13 = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "property-list"; version = "0.0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <james.cook@usma.edu>";
      author = "James Cook <james.cook@usma.edu>";
      homepage = "http://code.haskell.org/~mokus/property-list";
      url = "";
      synopsis = "XML property list parser";
      description = "Parser, data type and formatter for Apple's XML property list 1.0 format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-class" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-class"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."comonad-transformers" or ((hsPkgs.pkgs-errors).buildDepError "comonad-transformers"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."pointed" or ((hsPkgs.pkgs-errors).buildDepError "pointed"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."recursion-schemes" or ((hsPkgs.pkgs-errors).buildDepError "recursion-schemes"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."th-fold" or ((hsPkgs.pkgs-errors).buildDepError "th-fold"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ] ++ [
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          ];
        buildable = true;
        };
      };
    }
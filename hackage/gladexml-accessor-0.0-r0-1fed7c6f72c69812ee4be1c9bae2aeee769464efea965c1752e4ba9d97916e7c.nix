{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "gladexml-accessor"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yakov@yakov.cc";
      author = "Yakov Zaytsev";
      homepage = "";
      url = "";
      synopsis = "Automagically declares getters for widget handles in specified interface file.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."glade" or ((hsPkgs.pkgs-errors).buildDepError "glade"))
          ];
        buildable = true;
        };
      };
    }
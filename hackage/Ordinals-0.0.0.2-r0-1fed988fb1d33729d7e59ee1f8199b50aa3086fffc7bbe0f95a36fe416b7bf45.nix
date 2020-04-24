{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Ordinals"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kya@pdx.edu";
      author = "Ki Yung Ahn";
      homepage = "http://patch-tag.com/r/kyagrd/Ordinals/";
      url = "";
      synopsis = "Ordinal arithmetic";
      description = "Ordinal arithmetic implementation up to epsilon_0.\nCurrently based on interated multiset representation,\nplanning to add CNF based implenetation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }
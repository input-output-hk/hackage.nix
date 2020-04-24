{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ctpl"; version = "0.1.0.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hackage@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "http://doomanddarkness.eu/pub/ctpl";
      url = "";
      synopsis = "A programming language for text modification.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."chatty-text" or ((hsPkgs.pkgs-errors).buildDepError "chatty-text"))
          (hsPkgs."chatty-utils" or ((hsPkgs.pkgs-errors).buildDepError "chatty-utils"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        buildable = true;
        };
      exes = {
        "ctpl0debug" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chatty-text" or ((hsPkgs.pkgs-errors).buildDepError "chatty-text"))
            (hsPkgs."chatty-utils" or ((hsPkgs.pkgs-errors).buildDepError "chatty-utils"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        "ctplc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."chatty-text" or ((hsPkgs.pkgs-errors).buildDepError "chatty-text"))
            (hsPkgs."chatty-utils" or ((hsPkgs.pkgs-errors).buildDepError "chatty-utils"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { fatal-warnings = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "prosidyc"; version = "0.3.0.0"; };
      license = "MPL-2.0";
      copyright = "©2020 to James Alexander Feldman-Crough";
      maintainer = "alex@fldcr.com";
      author = "James Alexander Feldman-Crough";
      homepage = "";
      url = "";
      synopsis = "A DSL for processing Prosidy documents.";
      description = "A small, Haskell EDSL which builds a specification and compiler for\nProsidy dialects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."prosidy" or ((hsPkgs.pkgs-errors).buildDepError "prosidy"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          ];
        buildable = true;
        };
      };
    }
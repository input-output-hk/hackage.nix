{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc-crossref"; version = "0.1.6.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "root@livid.pp.ru";
      author = "Nikolay Yakimov";
      homepage = "";
      url = "";
      synopsis = "Pandoc filter for cross-references";
      description = "pandoc-crossref is a pandoc filter for numbering figures, equations, tables and cross-references to them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-crossref" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."pandoc-crossref" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-crossref"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-pandoc-crossref" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."pandoc-crossref" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-crossref"))
            ];
          buildable = true;
          };
        };
      };
    }
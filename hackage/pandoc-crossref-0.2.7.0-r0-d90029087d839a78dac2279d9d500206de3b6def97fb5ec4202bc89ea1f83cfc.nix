{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc-crossref"; version = "0.2.7.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "root@livid.pp.ru";
      author = "Nikolay Yakimov";
      homepage = "https://github.com/lierdakil/pandoc-crossref#readme";
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
          (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."data-accessor-template" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-template"))
          (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."roman-numerals" or ((hsPkgs.pkgs-errors).buildDepError "roman-numerals"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-crossref" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-template"))
            (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."roman-numerals" or ((hsPkgs.pkgs-errors).buildDepError "roman-numerals"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."pandoc-crossref" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-crossref"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-integrative" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-template"))
            (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."roman-numerals" or ((hsPkgs.pkgs-errors).buildDepError "roman-numerals"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."pandoc-crossref" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-crossref"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        "test-pandoc-crossref" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
            (hsPkgs."data-accessor-template" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-template"))
            (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."roman-numerals" or ((hsPkgs.pkgs-errors).buildDepError "roman-numerals"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
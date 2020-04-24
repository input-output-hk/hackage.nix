{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pandoc-japanese-filters"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "(c) Hiromi ISHII 2015";
      maintainer = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      author = "Hiromi ISHII <konn.jinro_at_gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Japanese-specific markup filters for pandoc.";
      description = "Japanese-specific markup filters for pandoc.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tate-math-to-svg-filter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX-qq"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
            (hsPkgs."effin" or ((hsPkgs.pkgs-errors).buildDepError "effin"))
            ];
          buildable = true;
          };
        "math-to-svg-filter" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or ((hsPkgs.pkgs-errors).buildDepError "system-fileio"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX-qq"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
            (hsPkgs."effin" or ((hsPkgs.pkgs-errors).buildDepError "effin"))
            ];
          buildable = true;
          };
        "japanese-filter" = {
          depends = [
            (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX-qq"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            ];
          buildable = true;
          };
        "env-to-div-filter" = {
          depends = [
            (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX-qq"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or ((hsPkgs.pkgs-errors).buildDepError "pandoc-types"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            ];
          buildable = true;
          };
        };
      };
    }
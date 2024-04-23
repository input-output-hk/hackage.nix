{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
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
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or (errorHandler.buildDepError "HaTeX-qq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."effin" or (errorHandler.buildDepError "effin"))
          ];
          buildable = true;
        };
        "math-to-svg-filter" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or (errorHandler.buildDepError "HaTeX-qq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."shelly" or (errorHandler.buildDepError "shelly"))
            (hsPkgs."effin" or (errorHandler.buildDepError "effin"))
          ];
          buildable = true;
        };
        "japanese-filter" = {
          depends = [
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or (errorHandler.buildDepError "HaTeX-qq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
          buildable = true;
        };
        "env-to-div-filter" = {
          depends = [
            (hsPkgs."HaTeX" or (errorHandler.buildDepError "HaTeX"))
            (hsPkgs."HaTeX-qq" or (errorHandler.buildDepError "HaTeX-qq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
          buildable = true;
        };
      };
    };
  }
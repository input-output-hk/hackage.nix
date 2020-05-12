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
      identifier = { name = "agda-snippets-hakyll"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/agda-snippets#readme";
      url = "";
      synopsis = "Literate Agda support using agda-snippets, for Hakyll pages.";
      description = "This library provides basic functions to use in Hakyll web-pages to generate\ncolourised and hyperlinked Agda source code snippets for literate Agda documents.\n\nIt makes use of the @agda-snippets@ library and will (hopefully) be kept up to\ndate with the latest Agda versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."agda-snippets" or (errorHandler.buildDepError "agda-snippets"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
        buildable = true;
        };
      };
    }
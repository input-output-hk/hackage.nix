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
      specVersion = "2.2";
      identifier = { name = "epub-tools"; version = "4.0"; };
      license = "ISC";
      copyright = "2008 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli ";
      homepage = "https://github.com/dino-/epub-tools.git";
      url = "";
      synopsis = "Command line utilities for working with epub files";
      description = "A suite of command-line utilities for creating and manipulating epub book files. Included are: epubmeta, epubname, epubzip";
      buildType = "Simple";
    };
    components = {
      exes = {
        "epubmeta" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."epub-metadata" or (errorHandler.buildDepError "epub-metadata"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."heredoc" or (errorHandler.buildDepError "heredoc"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative-dex" or (errorHandler.buildDepError "optparse-applicative-dex"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          ];
          buildable = true;
        };
        "epubname" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."epub-metadata" or (errorHandler.buildDepError "epub-metadata"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."heredoc" or (errorHandler.buildDepError "heredoc"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."optparse-applicative-dex" or (errorHandler.buildDepError "optparse-applicative-dex"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
        "epubzip" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."epub-metadata" or (errorHandler.buildDepError "epub-metadata"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."heredoc" or (errorHandler.buildDepError "heredoc"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."optparse-applicative-dex" or (errorHandler.buildDepError "optparse-applicative-dex"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "epubname-tests" = {
          depends = [
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."epub-metadata" or (errorHandler.buildDepError "epub-metadata"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."heredoc" or (errorHandler.buildDepError "heredoc"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }
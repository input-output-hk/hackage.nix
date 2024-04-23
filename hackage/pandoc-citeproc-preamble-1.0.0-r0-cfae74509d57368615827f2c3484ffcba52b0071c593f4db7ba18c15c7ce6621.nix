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
      identifier = { name = "pandoc-citeproc-preamble"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "spwhitton@spwhitton.name";
      author = "Sean Whitton";
      homepage = "https://github.com/spwhitton/pandoc-citeproc-preamble";
      url = "";
      synopsis = "Insert a preamble before pandoc-citeproc's bibliography";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pandoc-citeproc-preamble" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }
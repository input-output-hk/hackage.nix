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
      identifier = { name = "orgmode-parse"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Parnell <parnell@digitalmentat.com>";
      author = "Parnell <parnell@digitalmentat.com>";
      homepage = "";
      url = "";
      synopsis = "A parser and writer for org-mode flavored documents.";
      description = "`orgmode-parse` is a parsing and writing library for the org-mode flavor\nof document markup.\n\nThis library parses the human-readable and textual representation\ninto an AST that can be used for output to another format (HTML?\nMarkdown?), binary serialized for storage, etc...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }
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
      specVersion = "1.18";
      identifier = { name = "network-uri-template"; version = "0.1.1.4"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Pat Brisbin";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Library for parsing and expanding URI Templates, as per RFC 6570";
      description = "As per the RFC,\n\n@\nFor example, the following URI Template includes a form-style\nparameter expression, as indicated by the \"?\" operator appearing\nbefore the variable names.\n\n\nhttp://www.example.com/foo{?query,number}\n\n\nThe expansion process for expressions beginning with the question-\nmark (\"?\") operator follows the same pattern as form-style interfaces\non the World Wide Web:\n\n\nhttp://www.example.com/foo{?query,number}\n\\_____________/\n|\n|\nFor each defined variable in [ 'query', 'number' ],\nsubstitute \"?\" if it is the first substitution or \"&\"\nthereafter, followed by the variable name, '=', and the\nvariable's value.\n\n\nIf the variables have the values\n\n\nquery  := \"mycelium\"\nnumber := 100\n\n\nthen the expansion of the above URI Template is\n\n\nhttp://www.example.com/foo?query=mycelium&number=100\n\n\nAlternatively, if 'query' is undefined, then the expansion would be\n\n\nhttp://www.example.com/foo?number=100\n\n\nor if both variables are undefined, then it would be\n\n\nhttp://www.example.com/foo\n@\n\nThis library handles expanding such templates.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "network-uri-template" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network-uri-template" or (errorHandler.buildDepError "network-uri-template"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "readme" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network-uri-template" or (errorHandler.buildDepError "network-uri-template"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.markdown-unlit.components.exes.markdown-unlit or (pkgs.pkgsBuildBuild.markdown-unlit or (errorHandler.buildToolDepError "markdown-unlit:markdown-unlit")))
          ];
          buildable = true;
        };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."network-uri-template" or (errorHandler.buildDepError "network-uri-template"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
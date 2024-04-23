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
      specVersion = "1.8";
      identifier = { name = "pandoc-include-code"; version = "1.3.0.0"; };
      license = "MPL-2.0";
      copyright = "";
      maintainer = "Oskar Wickström";
      author = "Oskar Wickström";
      homepage = "https://github.com/owickstrom/pandoc-include-code";
      url = "";
      synopsis = "A Pandoc filter for including code from source files";
      description = "A Pandoc filter for including code from source files.\nIt lets you keep your examples and documentation compiled and in sync,\ninclude small snippets from larger source files, and use Markdown or LaTeX\ntogether with preformatted HTML-like sources, in Pandoc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
        ];
        buildable = true;
      };
      exes = {
        "pandoc-include-code" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."pandoc-include-code" or (errorHandler.buildDepError "pandoc-include-code"))
          ];
          buildable = true;
        };
      };
      tests = {
        "filter-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."pandoc-include-code" or (errorHandler.buildDepError "pandoc-include-code"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          ];
          buildable = true;
        };
      };
    };
  }
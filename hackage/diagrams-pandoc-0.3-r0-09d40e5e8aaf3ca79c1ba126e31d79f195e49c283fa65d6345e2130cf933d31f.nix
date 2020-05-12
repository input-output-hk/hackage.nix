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
      identifier = { name = "diagrams-pandoc"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Daniel Bergey";
      homepage = "";
      url = "";
      synopsis = "A Pandoc filter to express diagrams inline using the Haskell EDSL _Diagrams_";
      description = "'diagrams-pandoc' replaces appropriately marked code\nblocks in pandoc input with images.  The code blocks are compiled\nusing the Haskell EDSL Diagrams.  Each block should define a\nDiagram named 'example', to be output.  This name and other\ndefaults can be overridden by command-line arguments to the\ndiagrams-pandoc program.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."diagrams-builder" or (errorHandler.buildDepError "diagrams-builder"))
          (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "diagrams-pandoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."diagrams-builder" or (errorHandler.buildDepError "diagrams-builder"))
            (hsPkgs."diagrams-cairo" or (errorHandler.buildDepError "diagrams-cairo"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."diagrams-pandoc" or (errorHandler.buildDepError "diagrams-pandoc"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }
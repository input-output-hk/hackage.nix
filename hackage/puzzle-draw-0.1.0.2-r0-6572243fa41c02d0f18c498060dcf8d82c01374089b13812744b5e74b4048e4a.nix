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
      identifier = { name = "puzzle-draw"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "rfvollmert@gmail.com";
      author = "Robert Vollmert";
      homepage = "";
      url = "";
      synopsis = "Creating graphics for pencil puzzles.";
      description = "puzzle-draw is a library for drawing pencil puzzles\nusing Diagrams. It aims to provide a utility layer\non top of Diagrams to help with drawing arbitrary\npuzzles, as well as supporting several specific\npuzzle types directly. In addition, it includes\nfunctionality for parsing puzzle data from a\nYAML file format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."SVGFonts" or (errorHandler.buildDepError "SVGFonts"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."blaze-svg" or (errorHandler.buildDepError "blaze-svg"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."puzzle-draw" or (errorHandler.buildDepError "puzzle-draw"))
            ];
          buildable = true;
          };
        };
      };
    }
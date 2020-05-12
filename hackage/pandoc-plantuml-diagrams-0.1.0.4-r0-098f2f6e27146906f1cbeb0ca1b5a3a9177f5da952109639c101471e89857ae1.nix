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
      identifier = { name = "pandoc-plantuml-diagrams"; version = "0.1.0.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "contact@jonasw.de";
      author = "Jonas Weber";
      homepage = "";
      url = "";
      synopsis = "Render and insert PlantUML diagrams with Pandoc";
      description = "PlantUML renders different types of UML diagrams.\nThis filter invokes plantuml.jar (which must be present\nin the current directory) for any yet unrendered diagrams.\n\nDiagrams are recognized in CodeBlocks that have the\nclass \"uml\". It is advisable to also include an attribute\n\"caption\", which is rendered as alternate text for the image.\nIf an ID is present, it is additionally appended compatible\nwith pandoc-crossref.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "pandoc-plantuml-diagrams" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-plantuml-diagrams" or (errorHandler.buildDepError "pandoc-plantuml-diagrams"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-pandoc-crossref" = {
          depends = [
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }
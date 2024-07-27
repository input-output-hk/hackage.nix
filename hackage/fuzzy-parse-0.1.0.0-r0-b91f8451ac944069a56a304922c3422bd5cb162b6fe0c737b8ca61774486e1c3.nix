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
      identifier = { name = "fuzzy-parse"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "dzuikov@gmail.com";
      author = "Dmitry Zuikov";
      homepage = "https://github.com/hexresearch/fuzzy-parse";
      url = "";
      synopsis = "Tools for processing unstructured text data";
      description = "The lightweight and easy to use functions for text tokenizing and parsing.  It aimed for\nparsing mostly unstructured data, but the structured formats may be parsed as well.\nIt may be used in different sutiations, for DSL, tex markups or even for parsing simple\ngrammars easier and sometimes faster than in case of usage mainstream parsing combinators\nor parser generators.\nSee the README.md, examples and modules documentation for more.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "fuzzy-parse-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."fuzzy-parse" or (errorHandler.buildDepError "fuzzy-parse"))
            (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }
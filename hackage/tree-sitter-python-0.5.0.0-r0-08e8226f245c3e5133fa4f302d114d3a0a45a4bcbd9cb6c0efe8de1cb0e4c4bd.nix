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
      identifier = { name = "tree-sitter-python"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 GitHub";
      maintainer = "tclem@github.com";
      author = "Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey, Ayman Nadeem, Patrick Thomson";
      homepage = "https://github.com/tree-sitter/tree-sitter-python#readme";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Python";
      description = "This package provides a parser for Python suitable for use with the tree-sitter package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."semantic-source" or (errorHandler.buildDepError "semantic-source"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-python".components.sublibs.tree-sitter-python-internal or (errorHandler.buildDepError "tree-sitter-python:tree-sitter-python-internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "tree-sitter-python-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          ];
          libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
            (hsPkgs."tree-sitter-python" or (errorHandler.buildDepError "tree-sitter-python"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }
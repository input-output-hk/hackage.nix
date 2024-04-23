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
      identifier = { name = "tree-sitter-java"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 GitHub";
      maintainer = "tclem@github.com";
      author = "Ayman Nadeem, Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey";
      homepage = "https://github.com/tree-sitter/tree-sitter-go#readme";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Java";
      description = "This package provides a parser for Java suitable for use with the tree-sitter package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-java".components.sublibs.tree-sitter-java-internal or (errorHandler.buildDepError "tree-sitter-java:tree-sitter-java-internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "tree-sitter-java-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          ];
          libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
          buildable = true;
        };
      };
    };
  }
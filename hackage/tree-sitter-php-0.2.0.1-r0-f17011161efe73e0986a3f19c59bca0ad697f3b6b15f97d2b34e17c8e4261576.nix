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
      identifier = { name = "tree-sitter-php"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 GitHub";
      maintainer = "vera@github.com";
      author = "Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey, Ayman Nadeem, Patrick Thomson";
      homepage = "https://github.com/tree-sitter/tree-sitter-php#readme";
      url = "";
      synopsis = "Tree-sitter grammar/parser for PHP";
      description = "This package provides a parser for PHP suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tree-sitter" or (errorHandler.buildDepError "tree-sitter"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-php".components.sublibs.tree-sitter-php-internal or (errorHandler.buildDepError "tree-sitter-php:tree-sitter-php-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-php-internal" = {
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
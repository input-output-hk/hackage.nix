{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-sitter-java"; version = "0.7.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 GitHub";
      maintainer = "tclem@github.com";
      author = "Ayman Nadeem, Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey";
      homepage = "https://github.com/tree-sitter/haskell-tree-sitter/tree/master/tree-sitter-java";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Java";
      description = "This package provides a parser for Java suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      };
    }
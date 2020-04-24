{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-sitter-ruby"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 GitHub";
      maintainer = "tclem@github.com";
      author = "Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey, Ayman Nadeem, Patrick Thomson";
      homepage = "https://github.com/tree-sitter/tree-sitter-ruby#readme";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Ruby";
      description = "This package provides a parser for Ruby suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tree-sitter" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."tree-sitter-ruby-internal" or ((hsPkgs.pkgs-errors).buildDepError "tree-sitter-ruby-internal"))
          ];
        buildable = true;
        };
      sublibs = {
        "tree-sitter-ruby-internal" = {
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
      };
    }
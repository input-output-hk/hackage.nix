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
          (hsPkgs.base)
          (hsPkgs.tree-sitter)
          (hsPkgs.template-haskell)
          (hsPkgs.tree-sitter-ruby-internal)
          ];
        };
      sublibs = {
        "tree-sitter-ruby-internal" = {
          depends = [ (hsPkgs.base) (hsPkgs.tree-sitter) ];
          libs = [ (pkgs."stdc++") ];
          };
        };
      };
    }
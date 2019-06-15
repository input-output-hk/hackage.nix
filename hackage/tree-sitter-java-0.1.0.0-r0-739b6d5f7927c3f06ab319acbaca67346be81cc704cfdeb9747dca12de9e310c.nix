{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-sitter-java"; version = "0.1.0.0"; };
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
          (hsPkgs.base)
          (hsPkgs.tree-sitter)
          (hsPkgs.template-haskell)
          (hsPkgs.tree-sitter-java-internal)
          ];
        };
      sublibs = {
        "tree-sitter-java-internal" = {
          depends = [ (hsPkgs.base) (hsPkgs.tree-sitter) ];
          libs = [ (pkgs."stdc++") ];
          };
        };
      };
    }
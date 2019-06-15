{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-sitter-haskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 GitHub";
      maintainer = "tclem@github.com";
      author = "Max Brunsfeld, Tim Clem, Rob Rix, Josh Vera, Rick Winfrey, Ayman Nadeem, Patrick Thomson";
      homepage = "https://github.com/tree-sitter/tree-sitter-haskell#readme";
      url = "";
      synopsis = "Tree-sitter grammar/parser for Haskell (with GHC extensions)";
      description = "This package provides a parser for Haskell suitable for use with the tree-sitter package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tree-sitter)
          (hsPkgs.template-haskell)
          (hsPkgs.tree-sitter-haskell-internal)
          ];
        };
      sublibs = {
        "tree-sitter-haskell-internal" = {
          depends = [ (hsPkgs.base) (hsPkgs.tree-sitter) ];
          libs = [ (pkgs."stdc++") ];
          };
        };
      exes = {
        "demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tree-sitter)
            (hsPkgs.tree-sitter-haskell)
            ];
          };
        };
      };
    }
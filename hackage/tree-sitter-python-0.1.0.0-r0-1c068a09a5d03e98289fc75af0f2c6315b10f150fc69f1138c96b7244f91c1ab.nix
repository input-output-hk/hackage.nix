{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-sitter-python"; version = "0.1.0.0"; };
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
          (hsPkgs.base)
          (hsPkgs.tree-sitter)
          (hsPkgs.aeson)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.template-haskell)
          (hsPkgs.tree-sitter-python-internal)
          ];
        };
      sublibs = {
        "tree-sitter-python-internal" = {
          depends = [ (hsPkgs.base) (hsPkgs.tree-sitter) ];
          libs = [ (pkgs."stdc++") ];
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-sitter"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 GitHub";
      maintainer = "rob.rix@github.com";
      author = "Rob Rix, Josh Vera, Tim Clem, Rick Winfrey, Max Brunsfeld, Ayman Nadeem, Patrick Thomson";
      homepage = "http://github.com/tree-sitter/haskell-tree-sitter#readme";
      url = "";
      synopsis = "Unstable bindings for the tree-sitter parsing library.";
      description = "Tree-sitter is a parser generator tool and an incremental parsing library.\n\nWe strongly recommend against depending on this library at this time;\nthe data types and API are subject to rapid change. Future versions\nwill provide more reliable parsers and a more stable API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fused-effects)
          (hsPkgs.hedgehog)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "test" = {
          depends = [ (hsPkgs.base) (hsPkgs.tree-sitter) (hsPkgs.hspec) ];
          };
        "codegen-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.tree-sitter) (hsPkgs.hedgehog) ];
          };
        };
      };
    }
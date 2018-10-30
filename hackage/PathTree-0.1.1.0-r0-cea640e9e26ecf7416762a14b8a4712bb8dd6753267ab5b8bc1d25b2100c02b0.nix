{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "PathTree";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Pedro Rodriguez Tavarez";
      maintainer = "pedro@pjrt.co";
      author = "Pedro Rodriguez Tavarez";
      homepage = "https://github.com/pjrt/PathTree#readme";
      url = "";
      synopsis = "A tree used to merge and maintain paths";
      description = "This package contains two modules: \"Data.LCRSTree\" and \"Data.PathTree\".\n\nA 'PathTree' is a tree used to build unified paths from some node. This\nmeans being able to merge multiple paths, that may overlap at the root, in\na sensible way. The module comes with a set of functions to add paths.\n\nA Left-Children-Right-Siblings tree ('LCRSTree') is a tree that represents\na multi-way tree (aka, a Rose Tree) in a binary-tree format. It is the\nunderlying implementation of 'PathTree'.\n\n<https://en.wikipedia.org/wiki/Left-child_right-sibling_binary_tree>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "PathTree-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.PathTree)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }
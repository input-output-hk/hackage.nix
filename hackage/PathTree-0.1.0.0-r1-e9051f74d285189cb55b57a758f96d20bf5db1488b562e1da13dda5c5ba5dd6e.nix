{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "PathTree"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Pedro Rodriguez Tavarez";
      maintainer = "pedro@pjrt.co";
      author = "Pedro Rodriguez Tavarez";
      homepage = "https://github.com/pjrt/PathTree#readme";
      url = "";
      synopsis = "A tree used to merge and fold paths";
      description = "This package contains two modules: \"Data.LCRSTree\" and \"Data.PathTree\".\nA 'PathTree' is a tree used to build unified paths from some node. This\nmeans being able to merge multiple paths, that may overlap at the root, in\na sensible way. The module comes with a set of functions to add paths.\nA Left-Children-Right-Siblings tree ('LCRSTree') is a tree that represents\na multi-way tree (aka, a Rose Tree) in a binary-tree format. It is the\nunderlying implementation of 'PathTree'.\n<https://en.wikipedia.org/wiki/Left-child_right-sibling_binary_tree>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "PathTree-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."PathTree" or ((hsPkgs.pkgs-errors).buildDepError "PathTree"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }
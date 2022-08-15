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
      specVersion = "3.0";
      identifier = { name = "type-safe-avl"; version = "1.0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Nicolás Rodríguez <marco.nicolas.rodriguez@protonmail.com>";
      author = "Nicolás Rodríguez <marco.nicolas.rodriguez@protonmail.com>";
      homepage = "https://github.com/nico-rodriguez/type-safe-avl";
      url = "";
      synopsis = "Type safe BST and AVL trees";
      description = "Several implementations of type-safe binary search trees (BST) and balanced binary search trees (AVL).\n\nThese differ on how the structural invariants are implemented at the type level.\n\nEach of them have their own advantages and disadvantages.\n\nThis library shows different ways of implementing invariants at the type level,\neach of them providing different features, all of them enforced at compile time:\n\n  - Data invariant verification: assert at compile time if any given tree is BST/AVL.\n\n  - Program certification: verify at compile time if the implementation of the operations\n    over BST/AVL trees preserves the order of the keys and the balance in the heights.\n\n  - Type-safe data constructors: implementation of tree constructors that throw an error at compile time\n    if the tree being constructed is not BST/AVL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
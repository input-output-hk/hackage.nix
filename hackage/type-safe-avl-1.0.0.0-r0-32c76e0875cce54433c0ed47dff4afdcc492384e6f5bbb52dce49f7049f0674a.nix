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
      identifier = { name = "type-safe-avl"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Nicolás Rodríguez <marco.nicolas.rodriguez@protonmail.com>";
      author = "Nicolás Rodríguez <marco.nicolas.rodriguez@protonmail.com>";
      homepage = "https://github.com/nico-rodriguez/type-safe-avl";
      url = "";
      synopsis = "Type safe BST and AVL trees";
      description = "Several implementations of binary search trees (BST) and balanced binary search trees (AVL).\nVerify at compile time if the operations over BST/AVL trees preserves the order of the keys\nand the balance in the heights.\nFor both of them there's one unsafe implementation and three type-safe implementations.\nThe last ones differ one how the structural invariants are handled at the type level.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }
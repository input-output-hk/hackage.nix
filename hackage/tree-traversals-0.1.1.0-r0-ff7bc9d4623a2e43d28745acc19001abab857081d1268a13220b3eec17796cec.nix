let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "tree-traversals"; version = "0.1.1.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "noah.easterly@gmail.com";
      author = "Noah Luck Easterly";
      homepage = "https://github.com/rampion/tree-traversals";
      url = "";
      synopsis = "Functions and newtype wrappers for traversing Trees";
      description = "The tree-traversals package defines\n<https://en.wikipedia.org/wiki/Tree_traversal#Types in-order, pre-order, post-order, level-order, and reversed level-order traversals>\nfor tree-like types:\n\n> inorder, preorder, postorder, levelorder, rlevelorder\n>   :: (TreeLike tree, Applicative f) => (a -> f b) -> tree a -> f (tree b)\n\nThe package also provides newtype wrappers for the various traversals so they\nmay be used with @traverse@, i.e.\n\n> traverse f (InOrder tree) = inorder f tree\n> traverse f (PreOrder tree) = preorder f tree\n> traverse f (PostOrder tree) = postorder f tree\n> traverse f (LevelOrder tree) = levelorder f tree\n> traverse f (RLevelOrder tree) = rlevelorder f tree\n\nTo implement the various orders, the tree-traversals package provides the\n'Control.Applicative.Phases.Phases' applicative transformer for organizing effects\ninto distinct phases.\n\nInstances of 'Data.Traversable.TreeLike.TreeLike' are provided for\nrose trees ('Data.Tree.Tree'),\nbinary trees ('Data.BinaryTree.BinaryTree'),\nforests ('Data.Traversable.TreeLike.Forest'),\nand algebraic combinations of trees (@'Data.Functor.Compose.Compose' outerTree innerTree@,\n@'Data.Functor.Product' fstTree sndTree@, @'Data.Functor.Sum' leftTree rightTree@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."doctest" or (buildDepError "doctest"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }
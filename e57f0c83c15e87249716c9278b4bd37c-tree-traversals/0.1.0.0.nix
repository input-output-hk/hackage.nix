{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      development = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "2.2";
      identifier = {
        name = "tree-traversals";
        version = "0.1.0.0";
      };
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
      "tree-traversals" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }
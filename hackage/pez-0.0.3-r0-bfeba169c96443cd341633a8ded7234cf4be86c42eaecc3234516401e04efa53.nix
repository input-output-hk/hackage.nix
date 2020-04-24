{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "pez"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Brandon Simmons, 2011";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "http://coder.bsimmons.name/blog/2011/04/pez-zipper-library-released/";
      url = "";
      synopsis = "A Potentially-Excellent Zipper library";
      description = "PEZ is a generic zipper library. It uses lenses from the 'fclabels' package to\nreference a \"location\" to move to in the zipper. The zipper is restricted to\ntypes in the Typeable class, allowing the user to \"move up\" through complex data\nstructures such as mutually-recursive types.\n\nBoth the Typeable class and fclabels lenses can be derived in GHC, making it\neasy for the programmer to use a zipper with a minimum of boilerplate.\n\nFirst import the library, which brings in the Typeable and fclabels modules.\nYou will also want to enable a few extensions:\n\n> -- Put these in a LANGUAGE pragma:\n> -- TemplateHaskell, DeriveDataTypeable, TypeOperators\n> module Main where\n>\n> import Data.Typeable.Zipper\n\nCreate a datatype, deriving an instance of the Typeable class, and generate a\nlens using functions from fclabels:\n\n> data Tree a = Node {\n>     _leftNode :: Tree a\n>   , _val      :: a\n>   , _rightNode :: Tree a }\n>   | Nil\n>   deriving (Typeable,Show)\n>\n> \$(mkLabelsNoTypes [''Tree])\n\nNow we can go crazy using Tree in a Zipper:\n\n> treeBCD = Node (Node Nil 'b' Nil) 'c' (Node Nil 'd' Nil)\n>\n> descendLeft :: Zipper1 (Tree a) -> Zipper1 (Tree a)\n> descendLeft z = case (viewf z) of\n>                      Nil -> z\n>                      _   -> descendLeft \$ moveTo leftNode z\n>\n> insertLeftmost :: a -> Tree a -> Tree a\n> insertLeftmost x = close . setL focus x . descendLeft . zipper\n>\n> treeABCD = insertLeftmost 'a' treeBCD\n\nBecause of the flexibility of fclabels, this zipper library can be used to\nexpress moving about in reversible computations simply by defining such a lens,\nfor instance:\n\n> stringRep :: (Show b, Read b) => b :-> String\n> stringRep = lens show (const . read)\n\nPlease send any feature requests or bug reports along.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."thrist" or ((hsPkgs.pkgs-errors).buildDepError "thrist"))
          ];
        buildable = true;
        };
      };
    }
{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "type-level-sets";
        version = "0.8.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013-16 University of Cambridge";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Type-level sets and finite maps (with value-level counterparts)";
      description = "This package provides type-level sets (no duplicates, sorted to provide a normal form) via 'Set' and type-level finite maps via 'Map', with value-level counterparts.\n\nDescribed in the paper \"Embedding effect systems in Haskell\" by Dominic Orchard and Tomas Petricek <http://www.cl.cam.ac.uk/~dao29/publ/haskell14-effects.pdf> (Haskell Symposium, 2014). This version now uses Quicksort to normalise the representation.\n\nHere is a brief example for finite maps:\n\n@\nimport Data.Type.Map\n\ntype instance Combine Int Int = Int\ninstance Combinable Int Int where\ncombine x y = x + y\n\nfoo :: Map '[\"x\" :-> Int, \"z\" :-> Bool, \"w\" :-> Int]\nfoo = Ext (Var :: (Var \"x\")) 2\n\$ Ext (Var :: (Var \"z\")) True\n\$ Ext (Var :: (Var \"w\")) 5\n\$ Empty\n\nbar :: Map '[\"y\" :-> Int, \"w\" :-> Int]\nbar = Ext (Var :: (Var \"y\")) 3\n\$ Ext (Var :: (Var \"w\")) 1\n\$ Empty\n\nfoobar = foo `union` bar\n\n@\n\nThe 'Map' type for 'foobar' here shows the normalised form (sorted with no duplicates). The type signatures is commented out as it can be infered. Running the example we get:\n\n@\n> >>> foobar\n> {w :-> 6, x :-> 2, y :-> 3, z :-> True}\n@\n\nThus, we see that the values for \\\"w\\\" are added together.\n\nFor sets, here is an example:\n\n@\nimport GHC.TypeLits\nimport Data.Type.Set\ntype instance Cmp (Natural n) (Natural m) = CmpNat n m\n\ndata Natural (a :: Nat) where\nZ :: Natural 0\nS :: Natural n -> Natural (n + 1)\n\nfoo = asSet \$ Ext (S Z) (Ext (S (S (S Z))) (Ext Z Empty))\n\nbar = asSet \$ Ext (S (S Z)) (Ext (S Z) (Ext (S Z) Empty))\n\nfoobar = foo `union` bar\n\n@\nNote the types here are all inferred.";
      buildType = "Simple";
    };
    components = {
      "type-level-sets" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }
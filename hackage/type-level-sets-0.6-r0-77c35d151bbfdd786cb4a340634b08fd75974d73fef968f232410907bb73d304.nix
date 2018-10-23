{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "type-level-sets";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "2013-14 University of Cambridge";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Type-level sets and finite maps (with value-level counterparts and various operations)";
      description = "This package provides type-level sets (no duplicates, sorted to provide a normal form) via 'Set' and type-level\nmaps via 'Map', with value-level counterparts.\n\nDescribed in the paper \\\"Embedding effect systems in Haskell\\\" by Dominic Orchard\nand Tomas Petricek <http://www.cl.cam.ac.uk/~dao29/publ/haskell14-effects.pdf> (Haskell Symposium, 2014)\n\nHere is a brief example:\n\n>\n> import Data.Type.Map\n>\n> foo :: Set '[\"x\" :-> Int, \"z\" :-> Int, \"w\" :-> Int]\n> foo = Ext ((Var :: (Var \"x\")) :-> 2) \$\n>         Ext ((Var :: (Var \"z\")) :-> 4) \$\n>           Ext ((Var :: (Var \"w\")) :-> 5) \$\n>             Empty\n>\n> bar :: Set '[\"y\" :-> Int, \"w\" :-> Int]\n> bar = Ext ((Var :: (Var \"y\")) :-> 3) \$\n>         Ext ((Var :: (Var \"w\")) :-> 1) \$\n>           Empty\n>\n> -- foobar :: Set '[\"w\" :-> Int, \"x\" :-> Int, \"y\" :-> Int, \"z\" :-> Int]\n> foobar = foo `union` bar\n\nThe 'Set' type for 'foobar' here shows the normalised form (sorted with no duplicates).\nThe type signatures is commented out as it can be infered. Running the example we get:\n\n> >>> foobar\n> [(Var :-> 1), (Var :-> 2), (Var :-> 3), (Var :-> 4)]\n\nThus, we see that the first value paired with the \\\"w\\\" variable is dropped.\n";
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
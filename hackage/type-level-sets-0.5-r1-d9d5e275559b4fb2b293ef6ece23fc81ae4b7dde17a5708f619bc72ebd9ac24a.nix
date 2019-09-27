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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "type-level-sets"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "2013-14 University of Cambridge";
      maintainer = "Dominic Orchard";
      author = "Dominic Orchard";
      homepage = "";
      url = "";
      synopsis = "Type-level sets (with value-level counterparts and various operations)";
      description = "This package provides type-level sets (no duplicates, sorted to provide a nomral form) via 'Set',\nwith value-level counterparts. Described in the paper \\\"Embedding effect systems in Haskell\\\" by Dominic Orchard\nand Tomas Petricek <http://www.cl.cam.ac.uk/~dao29/publ/haskell14-effects.pdf> (Haskell Symposium, 2014)\n\nHere is a brief example:\n\n>\n> import Data.Type.Set\n>\n> foo :: Set '[\"x\" :-> Int, \"z\" :-> Int, \"w\" :-> Int]\n> foo = Ext ((Var :: (Var \"x\")) :-> 2) \$\n>         Ext ((Var :: (Var \"z\")) :-> 4) \$\n>           Ext ((Var :: (Var \"w\")) :-> 5) \$\n>             Empty\n>\n> bar :: Set '[\"y\" :-> Int, \"w\" :-> Int]\n> bar = Ext ((Var :: (Var \"y\")) :-> 3) \$\n>         Ext ((Var :: (Var \"w\")) :-> 1) \$\n>           Empty\n>\n> -- foobar :: Set '[\"w\" :-> Int, \"x\" :-> Int, \"y\" :-> Int, \"z\" :-> Int]\n> foobar = foo `union` bar\n\nThe 'Set' type for 'foobar' here shows the normalised form (sorted with no duplicates).\nThe type signatures is commented out as it can be infered. Running the example we get:\n\n> >>> foobar\n> [(Var :-> 1), (Var :-> 2), (Var :-> 3), (Var :-> 4)]\n\nThus, we see that the first value paired with the \\\"w\\\" variable is dropped.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }
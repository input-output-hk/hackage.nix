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
      specVersion = "1.10";
      identifier = { name = "dual-tree"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diagrams-discuss@googlegroups.com";
      author = "Brent Yorgey";
      homepage = "";
      url = "";
      synopsis = "Rose trees with cached and accumulating monoidal annotations";
      description = "Rose (n-ary) trees with both upwards- (/i.e./\ncached) and downwards-traveling (/i.e./\naccumulating) monoidal annotations.  This is used\nas the core data structure underlying\nthe @diagrams@ framework\n(<http://projects.haskell.org/diagrams>), but\npotentially has other applications as well.\n\nAbstractly, a DUALTree is a rose (n-ary) tree\nwith data (of type @l@) at leaves, data (of type\n@a@) at internal nodes, and two types of monoidal\nannotations, one (of type @u@) travelling \\\"up\\\"\nthe tree and one (of type @d@) traveling\n\\\"down\\\".\n\nSee \"Data.Tree.DUAL\" for full documentation.\n\"Data.Tree.DUAL\" provides a public API which\nshould suffice for most purposes.\n\"Data.Tree.DUAL.Internal\" exports more of the\ninternal implementation---use it at your own\nrisk.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."newtype" or (buildDepError "newtype"))
          (hsPkgs."monoid-extras" or (buildDepError "monoid-extras"))
          ];
        buildable = true;
        };
      };
    }
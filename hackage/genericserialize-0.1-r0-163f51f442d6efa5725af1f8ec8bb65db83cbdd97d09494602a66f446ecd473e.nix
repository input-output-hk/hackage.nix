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
      specVersion = "0";
      identifier = { name = "genericserialize"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Stefan O'Rear <stefanor@cox.net>";
      author = "Stefan O'Rear";
      homepage = "";
      url = "";
      synopsis = "Serialization library using Data.Generics";
      description = "GenericSerialize is a library for serialization using the\nexisting generic-programming framework.\n\nIt is often advocated that support for serialization should be added to\nthe compiler (e.g. in the form of a deriving(Binary)).  With this I\nintend to show that the existing infrastructure is sufficient, and\nhas some advantages over a dedicated serialization interface.\n\nThe main advantage that generic serialization posseses is that it is\npossible to simultaneously have several serialization modes.  While\ninterfaces such as AltBinary allow writing to any type of stream, the\ndata format is fixed.  By contrast, GenericSerialize supports multiple\nserialization modes; while the only currently existing module is for a\nsubset of R5RS s-expressions, that module is less than 100 lines of code\nand is almost pure grammar.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }
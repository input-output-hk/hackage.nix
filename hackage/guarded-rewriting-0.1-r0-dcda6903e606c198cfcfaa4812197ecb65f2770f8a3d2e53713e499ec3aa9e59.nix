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
      identifier = { name = "guarded-rewriting"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "Thomas van Noort, Alexey Rodriguez Yakushev,\nStefan Holdermans, Johan Jeuring, Bastiaan Heeren,\nJose Pedro Magalhaes";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/GuardedRewriting";
      url = "";
      synopsis = "Datatype-generic rewriting with preconditions";
      description = "This package provides rewriting functionality for datatypes. Most forms of\ndatatypes are supported, including parametrized and mutually-recursive.\n\nThis library has been described in the paper:\n\n*  Thomas van Noort, Alexey Rodriguez Yakushev, Stefan Holdermans,\nJohan Jeuring, Bastiaan Heeren, Jose Pedro Magalhaes.\n/A Lightweight Approach to Datatype-Generic Rewriting./\nJournal of Functional Programming, Special Issue on Generic Programming,\n2010.\n\nMore information about this library can be found at\n<http://www.cs.uu.nl/wiki/GenericProgramming/GuardedRewriting>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."instant-generics" or (buildDepError "instant-generics"))
          ];
        };
      };
    }
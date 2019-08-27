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
      specVersion = "1.9.2";
      identifier = { name = "emgm"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 - 2011 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "Sean Leather,\nJosé Pedro Magalhães,\nAlexey Rodriguez,\nAndres Löh";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/EMGM";
      url = "";
      synopsis = "Extensible and Modular Generics for the Masses";
      description = "EMGM is a general-purpose library for datatype-generic programming.\n\nThe design is based on the idea of modeling algebraic datatypes as\nsum-of-product structures. Many datatypes can be modeled this way, and\nbecause they all share a common structure, we can write generic functions that\nwork on this structure.\n\nThe primary features of the library are:\n\n* /A foundation for building generic functions./ EMGM includes a collection of\ndatatypes (e.g. sum, product, and unit) and type classes (e.g. @Generic@ and\n@Rep@). Everything you need for defining generic functions and supporting\ndatatypes can be found here.\n\n* /Many useful generic functions./ These provide a wide range of\nfunctionality. For example, there is @crush@, a generalization of the\nfoldl/foldr functions, that allows you to flexibly extract the elements of a\npolymorphic container. Now, you can do many of the operations with your\ncontainer that were previously only available for lists.\n\n* /Support for standard datatypes./ EMGM supports standard types: primitives\n(e.g. @Int@ and @Float@), @Bool@, lists, tuples, @Maybe@, etc.\n\n/NOTE:/ As of version 0.4, this library does not have Template Haskell for\ngenerating the representation. We are working on another library for a\nsolution to this problem.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }
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
    flags = { test = false; hpc = false; nolib = false; };
    package = {
      specVersion = "1.2.1";
      identifier = { name = "emgm"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008, 2009 Universiteit Utrecht";
      maintainer = "generics@haskell.org";
      author = "Sean Leather,\nJosé Pedro Magalhães,\nAlexey Rodriguez,\nAndres Löh";
      homepage = "http://www.cs.uu.nl/wiki/GenericProgramming/EMGM";
      url = "";
      synopsis = "Extensible and Modular Generics for the Masses";
      description = "EMGM is a general-purpose library for generic programming with type classes.\n\nThe design is based on the idea of modeling algebraic datatypes as\nsum-of-product structures. Many datatypes can be modeled this way, and\nbecause they all share a common structure, we can write generic functions that\nwork on this structure.\n\nThe primary features of the library are:\n\n* /A platform for building generic functions and adding support for user-defined datatypes./\n\nEMGM includes an important collection of datatypes (e.g. sum, product, and\nunit) and type classes (e.g. @Generic@ and @Rep@). Everything you need for\nyour own generic functions or datatypes can be found here.\n\n* /Many useful generic functions./\n\nThese provide a wide range of functionality. For example, there is @crush@\n(\"Generics.EMGM.Functions.Crush\"), a generalization of the foldl/foldr\nfunctions, that allows you to flexibly extract the elements of a polymorphic\ncontainer. Now, you can do many of the operations with your container that\nwere previously only available for lists.\n\nDifferent generic functions work with different kinds of types as well. For\nexample, @collect@ (\"Generics.EMGM.Functions.Collect\") works with any fully\napplied type while @bimap@ (\"Generics.EMGM.Functions.Map\") only works with\nbifunctor types such as @Either@ or @(,)@ (pairs).\n\n* /Support for standard and user-defined datatypes./\n\nEMGM provides full support for standard types such as @[]@ (lists), tuples,\nand @Maybe@ as well as many types you define in your own code. Using the\nTemplate Haskell functions provided in \"Generics.EMGM.Derive\", it is very\nsimple to add support for using generic functions with your datatype\n\nFor more information on EMGM, see\n<http://www.cs.uu.nl/wiki/GenericProgramming/EMGM>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      exes = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            ] ++ (pkgs.lib).optionals (flags.test) [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ];
          };
        };
      };
    }
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
      identifier = { name = "open-adt"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Jordan Woehr";
      maintainer = "Jordan Woehr";
      author = "";
      homepage = "https://github.com/woehr/open-adt";
      url = "";
      synopsis = "Open algebraic data types.";
      description = "This library, built upon row-types, provides types and functions\nfor variants of various functors that all have the same type\napplied to them. This is very similar to, and inspired by,\n<https://github.com/haskus/haskus-utils haskus-utils-variant>.\nAt the time of writing, the compile-time performance of\nhaskus-utils-variant is poor for variants with many fields, which\nshould be improved in this package by using row-types.\n\nThe main types of interest in this package are 'VarF' and\n'OpenADT'. 'VarF' wraps a variant of functors, all over the same\ntype, and provides a functor instance that fmaps over whatever\nthe variant is. 'OpenADT' is the fixed-point type of 'VarF',\nwhich allows for recursive structures to be created.\n\nA convenience function, 'mkVarPattern' from 'Data.OpenADT.TH',\ngenerates patterns that can be used as constructors for variants.\nThe key aspect of these patterns is that they are polymorphic\nin the type of the row, allowing them to be used as constructors\nfor any open algebraic data type that includes a particular\nconstructor.\n\nFor examples, see the 'Data.OpenADT.Tutorial' module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."recursion-schemes" or (buildDepError "recursion-schemes"))
          (hsPkgs."row-types" or (buildDepError "row-types"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }
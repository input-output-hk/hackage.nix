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
      specVersion = "1.16";
      identifier = { name = "enumeration"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Eric McCorkle.  All rights reserved.";
      maintainer = "Eric McCorkle <emc2@metricspace.net>, Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Eric McCorkle";
      homepage = "https://github.com/emc2/enumeration";
      url = "";
      synopsis = "A practical API for building recursive enumeration\nprocedures and enumerating datatypes.";
      description = "A library providing tools for building enumeration procedures for recursively-\nenumerable datatypes.  This is built atop the arith-encode library, and makes\nuse of the natural number isomorphisms it provides to represent individual\ndecisions in the enumeration procedure.  As such, each enumeration result is\ndenoted by a unique path, consisting of a sequence of natural numbers.  An\nenumeration procedure is simply a (partial) mapping between sequences\nand a given datatype.\n\nThe library provides functionality for constructing enumeration procedures,\nas well as facilities for performing enumeration according to various search\nstrategies (depth-first, breadth-first, etc).  These procedures can also be\n\"warm-started\" using a path or a set of paths.  Obvious applications include\nexhaustive search, testing, automated proving, and others.\n\nAdditionally, as a path is simply a sequence of natural numbers, an\nenumeration procedure can double as a binary serializer/deserializer.  For\nwell-behaved enumeration procedures (ie. those where the mapping is an\nisomorphism), the resulting binary format should be very nearly succinct.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."arith-encode" or (buildDepError "arith-encode"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."heap" or (buildDepError "heap"))
          (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
          ];
        buildable = true;
        };
      tests = {
        "UnitTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."arith-encode" or (buildDepError "arith-encode"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."enumeration" or (buildDepError "enumeration"))
            (hsPkgs."HUnit-Plus" or (buildDepError "HUnit-Plus"))
            ];
          buildable = true;
          };
        };
      };
    }
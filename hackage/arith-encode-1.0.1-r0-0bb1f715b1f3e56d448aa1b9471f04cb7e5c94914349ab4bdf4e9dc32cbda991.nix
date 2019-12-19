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
      identifier = { name = "arith-encode"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Eric McCorkle.  All rights reserved.";
      maintainer = "Eric McCorkle <emc2@metricspace.net>, Andrew Lelechenko <andrew.lelechenko@gmail.com>";
      author = "Eric McCorkle";
      homepage = "https://github.com/emc2/arith-encode";
      url = "";
      synopsis = "A practical arithmetic encoding (aka Godel numbering) library.";
      description = "A library providing tools and various schemes for encoding arbitrary datatypes\nas natural numbers.  The underlying theory is that of isomorphisms with the natural\nnumbers (known as Godel numbering).  The library provides functionality for defining\nmultiple such encodings for a given datatype, as well as a collection of stock\nencodings and combinators which can be used to build more complex encodings.\n\nThis has various uses, among them binary serialization/deserialization and\nenumeration testing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."arithmoi" or (buildDepError "arithmoi"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."integer-logarithms" or (buildDepError "integer-logarithms"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "UnitTest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."arith-encode" or (buildDepError "arith-encode"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."HUnit-Plus" or (buildDepError "HUnit-Plus"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }
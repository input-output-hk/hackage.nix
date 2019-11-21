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
      specVersion = "2.2";
      identifier = { name = "overloaded"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Overloaded pragmas as a plugin";
      description = "Implement @Overloaded@ pragmas as a source plugin\n\nFor example we can replace\n\n@\n{-\\# LANGUAGE OverloadedStrings #-}\n@\n\nwith\n\n@\n{-\\# OPTIONS -fplugin=Overloaded -fplugin-opt=Overloaded:Strings #-}\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."fin" or (buildDepError "fin"))
          (hsPkgs."record-hasfield" or (buildDepError "record-hasfield"))
          (hsPkgs."sop-core" or (buildDepError "sop-core"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."symbols" or (buildDepError "symbols"))
          (hsPkgs."vec" or (buildDepError "vec"))
          ];
        buildable = true;
        };
      sublibs = {
        "optics-hasfield" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optics-core" or (buildDepError "optics-core"))
            (hsPkgs."record-hasfield" or (buildDepError "record-hasfield"))
            ];
          buildable = true;
          };
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."fin" or (buildDepError "fin"))
            (hsPkgs."overloaded" or (buildDepError "overloaded"))
            (hsPkgs."sop-core" or (buildDepError "sop-core"))
            (hsPkgs."symbols" or (buildDepError "symbols"))
            (hsPkgs."vec" or (buildDepError "vec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "example-idiom-brackets" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."overloaded" or (buildDepError "overloaded"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "example-record-fields" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."overloaded" or (buildDepError "overloaded"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."record-hasfield" or (buildDepError "record-hasfield"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."fin" or (buildDepError "fin"))
            (hsPkgs."optics-core" or (buildDepError "optics-core"))
            (hsPkgs."optics-hasfield" or (buildDepError "optics-hasfield"))
            (hsPkgs."overloaded" or (buildDepError "overloaded"))
            (hsPkgs."record-hasfield" or (buildDepError "record-hasfield"))
            (hsPkgs."sop-core" or (buildDepError "sop-core"))
            (hsPkgs."symbols" or (buildDepError "symbols"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."vec" or (buildDepError "vec"))
            (hsPkgs."generic-lens" or (buildDepError "generic-lens"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."singleton-bool" or (buildDepError "singleton-bool"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }
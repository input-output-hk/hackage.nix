{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "overloaded"; version = "0.2.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."assoc" or ((hsPkgs.pkgs-errors).buildDepError "assoc"))
          (hsPkgs."bin" or ((hsPkgs.pkgs-errors).buildDepError "bin"))
          (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
          (hsPkgs."ral" or ((hsPkgs.pkgs-errors).buildDepError "ral"))
          (hsPkgs."record-hasfield" or ((hsPkgs.pkgs-errors).buildDepError "record-hasfield"))
          (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."symbols" or ((hsPkgs.pkgs-errors).buildDepError "symbols"))
          (hsPkgs."vec" or ((hsPkgs.pkgs-errors).buildDepError "vec"))
          ];
        buildable = true;
        };
      sublibs = {
        "optics-hasfield" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
            (hsPkgs."record-hasfield" or ((hsPkgs.pkgs-errors).buildDepError "record-hasfield"))
            ];
          buildable = true;
          };
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
            (hsPkgs."overloaded" or ((hsPkgs.pkgs-errors).buildDepError "overloaded"))
            (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
            (hsPkgs."symbols" or ((hsPkgs.pkgs-errors).buildDepError "symbols"))
            (hsPkgs."vec" or ((hsPkgs.pkgs-errors).buildDepError "vec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "example-idiom-brackets" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."overloaded" or ((hsPkgs.pkgs-errors).buildDepError "overloaded"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "example-record-fields" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."overloaded" or ((hsPkgs.pkgs-errors).buildDepError "overloaded"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."record-hasfield" or ((hsPkgs.pkgs-errors).buildDepError "record-hasfield"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "example-boring" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."overloaded" or ((hsPkgs.pkgs-errors).buildDepError "overloaded"))
            (hsPkgs."boring" or ((hsPkgs.pkgs-errors).buildDepError "boring"))
            (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        "example-local-do" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."overloaded" or ((hsPkgs.pkgs-errors).buildDepError "overloaded"))
            ];
          buildable = true;
          };
        "example-ad" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
            (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
            (hsPkgs."overloaded" or ((hsPkgs.pkgs-errors).buildDepError "overloaded"))
            ];
          buildable = true;
          };
        "test" = {
          depends = [
            (hsPkgs."assoc" or ((hsPkgs.pkgs-errors).buildDepError "assoc"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bin" or ((hsPkgs.pkgs-errors).buildDepError "bin"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
            (hsPkgs."optics-core" or ((hsPkgs.pkgs-errors).buildDepError "optics-core"))
            (hsPkgs."optics-hasfield" or ((hsPkgs.pkgs-errors).buildDepError "optics-hasfield"))
            (hsPkgs."overloaded" or ((hsPkgs.pkgs-errors).buildDepError "overloaded"))
            (hsPkgs."ral" or ((hsPkgs.pkgs-errors).buildDepError "ral"))
            (hsPkgs."record-hasfield" or ((hsPkgs.pkgs-errors).buildDepError "record-hasfield"))
            (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
            (hsPkgs."symbols" or ((hsPkgs.pkgs-errors).buildDepError "symbols"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."vec" or ((hsPkgs.pkgs-errors).buildDepError "vec"))
            (hsPkgs."generic-lens-lite" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens-lite"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."singleton-bool" or ((hsPkgs.pkgs-errors).buildDepError "singleton-bool"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "overloaded"; version = "0.1"; };
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
          (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
          (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."symbols" or ((hsPkgs.pkgs-errors).buildDepError "symbols"))
          (hsPkgs."vec" or ((hsPkgs.pkgs-errors).buildDepError "vec"))
          ];
        buildable = true;
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
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."fin" or ((hsPkgs.pkgs-errors).buildDepError "fin"))
            (hsPkgs."overloaded" or ((hsPkgs.pkgs-errors).buildDepError "overloaded"))
            (hsPkgs."sop-core" or ((hsPkgs.pkgs-errors).buildDepError "sop-core"))
            (hsPkgs."symbols" or ((hsPkgs.pkgs-errors).buildDepError "symbols"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vec" or ((hsPkgs.pkgs-errors).buildDepError "vec"))
            (hsPkgs."generic-lens" or ((hsPkgs.pkgs-errors).buildDepError "generic-lens"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }
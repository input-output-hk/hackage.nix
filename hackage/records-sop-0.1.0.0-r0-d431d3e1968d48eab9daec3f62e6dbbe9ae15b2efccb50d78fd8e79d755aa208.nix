{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "records-sop"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andres@well-typed.com";
      author = "Andres Löh <andres@well-typed.com>";
      homepage = "";
      url = "";
      synopsis = "Record subtyping and record utilities with generics-sop";
      description = "This library provides utilities for working with labelled\nsingle-constructor record types via generics-sop.\n\nIt also provides functions to safely cast between record\ntypes if the target type has a subset of the fields (with\nthe same names) of the source type.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."records-sop" or ((hsPkgs.pkgs-errors).buildDepError "records-sop"))
            (hsPkgs."should-not-typecheck" or ((hsPkgs.pkgs-errors).buildDepError "should-not-typecheck"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ixset-typed"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andres Löh <andres@well-typed.com>";
      author = "Andres Löh, Happstack team, HAppS LLC";
      homepage = "";
      url = "";
      synopsis = "Efficient relational queries on Haskell sets.";
      description = "This Haskell package provides a data structure of sets that are indexed\nby potentially multiple indices.\n\nSets can be created, modified, and queried in various ways.\n\nThe package is a variant of the <https://hackage.haskell.org/package/ixset ixset>\npackage. The ixset package makes use\nof run-time type information to find a suitable index on a query, resulting\nin possible run-time errors when no suitable index exists. In ixset-typed,\nthe types of all indices available or tracked in the type system.\nThus, ixset-typed should be safer to use than ixset, but in turn requires\nmore GHC extensions.\n\nAt the moment, the two packages are relatively compatible. As a consequence\nof the more precise types, a few manual tweaks are necessary when switching\nfrom one to the other, but the interface is mostly the same.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."safecopy" or ((hsPkgs.pkgs-errors).buildDepError "safecopy"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "test-ixset-typed" = {
          depends = [
            (hsPkgs."ixset-typed" or ((hsPkgs.pkgs-errors).buildDepError "ixset-typed"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
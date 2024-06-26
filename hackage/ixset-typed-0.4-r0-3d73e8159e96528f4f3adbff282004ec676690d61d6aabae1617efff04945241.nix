{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ixset-typed"; version = "0.4"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "test-ixset-typed" = {
          depends = [
            (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }
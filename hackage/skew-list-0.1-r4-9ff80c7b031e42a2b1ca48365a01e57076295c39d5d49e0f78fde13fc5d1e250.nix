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
      specVersion = "2.2";
      identifier = { name = "skew-list"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2022 Oleg Grenrus";
      maintainer = "Oleg.Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/skew-list";
      url = "";
      synopsis = "Random access lists: skew binary";
      description = "This package provides ordinary random access list, 'SkewList'\nimplemented using skew binary approach.\n\nIt's worth comparing to ordinary lists, binary random access list (as in @ral@ package) and vectors (@vector@ package)\nacross two operations: indexing and consing.\n\n+------------------------------+------------+----------+\n|                              | Consing    | Indexing |\n+------------------------------+------------+----------+\n| Ordinary list, @[a]@         | O(1)       | O(n)     |\n+------------------------------+------------+----------+\n| Binary list, @RAList a@      | O(log n)   | O(log n) |\n+------------------------------+------------+----------+\n| Vector, @Vector@             | O(n)       | O(1)     |\n+------------------------------+------------+----------+\n| Sequence, @Seq@              | O(1)       | O(log n) |\n+------------------------------+------------+----------+\n| Skew binary list, @SkewList@ | O(1)       | O(log n) |\n+------------------------------+------------+----------+\n\n@SkewList@ improves upon ordinary list, the cons operation is still\nconstant time (though with higher constant factor), but indexing\ncan be done in a logarithmic time.\n\nBinary list cons is slower, as it might need to walk over whole\n/log n/ sized structure.\n\n@Vector@ is the other end of trade-off spectrum: indexing is constant time\noperation, but consing a new element will need to copy whole spine.\n\n@Seq@ from \"Data.Sequence\" has similar (but amortized) complexity bounds for\ncons and index as @SkewList@.  However (it seems) that indexing is quicker for\n@SkewList@ in practice. Also @SkewList@ has strict spine.\nOn the other hand, @Seq@ has quick append if you need that.\n\nIf you need both: fast consing and index, consider using @SkewList@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
        ];
        buildable = true;
      };
      tests = {
        "skew-list-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."indexed-traversable" or (errorHandler.buildDepError "indexed-traversable"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."skew-list" or (errorHandler.buildDepError "skew-list"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "skew-list-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."ral" or (errorHandler.buildDepError "ral"))
            (hsPkgs."skew-list" or (errorHandler.buildDepError "skew-list"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }
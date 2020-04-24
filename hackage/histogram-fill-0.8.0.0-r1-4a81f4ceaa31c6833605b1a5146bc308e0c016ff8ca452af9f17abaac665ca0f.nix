{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "histogram-fill"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov";
      homepage = "https://bitbucket.org/Shimuuar/histogram-fill/";
      url = "";
      synopsis = "Library for histograms creation.";
      description = "This is library for histograms filling. Its aim to provide\nconvenient way to create and fill histograms.\n\nChanges in 0.8.0.0\n\n* @toHBuilderM@ added and internal definition of @HBuilder@ is\nchanged. It required adding dependency on @monad-primitive@.\n\n* @joinHBuilder@ and @treeHBuilder@ are deprecated.\n\nChanges in 0.7.3.0\n\n* Function for searching for minimum/maximum added.\n\n* @NFData@ instance is fixed.\n\nChanges in 0.7.3.0\n\n* @mkStatefulBuilder@ is added and HBuilder constructor is exposed.\n\n* Indexing operators for immutable histograms are added.\n\nChanges in 0.7.2.0\n\n* fromMaybeBin added.\n\nChanges in 0.7.1.0\n\n* breduceX and breduceY are added.\n\nChanges in 0.7.0.0\n\n* @mkFoldBuilder@ is added to @Data.Histogram.Fill@\n\n* fill functions in @Data.Histogram.ST@ are replaced with generic\nvariant.\n\n* Indexing for immutable histograms is added and special constructor\nfor first and last bin are added to @HistIndex@ data type.\n\n* Functions to calculate sum, minimum and maximum of immutable\nhistogram are added.\n\nChanges in 0.6.2.0\n\n* MaybeBin added.\n\n* Helper function for defining Read instances for bins are exposed.\n\n* mapData function is added.\n\n* Slicing histogram do not results in crash if indices are out of\nbounds.\n\n* Eq instances for BinF and BinD are added.\n\n* NFData instance for Bin2D is fixed.\n\nChanges in 0.6.1.0\n\n* Helper function and type synonym for Bin2D\n\nChanges in 0.6.0.1\n\n* Fixed compilation with GHC 7.4";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."monad-primitive" or ((hsPkgs.pkgs-errors).buildDepError "monad-primitive"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."histogram-fill" or ((hsPkgs.pkgs-errors).buildDepError "histogram-fill"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."histogram-fill" or ((hsPkgs.pkgs-errors).buildDepError "histogram-fill"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }
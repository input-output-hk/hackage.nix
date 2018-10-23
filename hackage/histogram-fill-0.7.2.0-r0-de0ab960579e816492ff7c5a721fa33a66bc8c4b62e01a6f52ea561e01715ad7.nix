{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "histogram-fill";
        version = "0.7.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov";
      homepage = "http://bitbucket.org/Shimuuar/histogram-fill/";
      url = "";
      synopsis = "Library for histograms creation.";
      description = "This is library for histograms filling. Its aim to provide\nconvenient way to create and fill histograms.\n\nChanges in 0.7.2.0\n\n* fromMaybeBin added.\n\nChanges in 0.7.1.0\n\n* breduceX and breduceY are added.\n\nChanges in 0.7.0.0\n\n* mkFoldBuilder is added to @Data.Histogram.Fill@\n\n* fill functions in @Data.Histogram.ST@ are replaced with generic\nvariant.\n\n* Indexing for immutable histograms is added and special constructor\nfor first and last bin are added to @HistIndex@ data type.\n\n* Functions to calculate sum, minimum and maximum of immutable\nhistogram are added.\n\nChanges in 0.6.2.0\n\n* MaybeBin added.\n\n* Helper function for defining Read instances for bins are exposed.\n\n* mapData function is added.\n\n* Slicing histogram do not results in crash if indices are out of\nbounds.\n\n* Eq instances for BinF and BinD are added.\n\n* NFData instance for Bin2D is fixed.\n\nChanges in 0.6.1.0\n\n* Helper function and type synonym for Bin2D\n\nChanges in 0.6.0.1\n\n* Fixed compilation with GHC 7.4";
      buildType = "Simple";
    };
    components = {
      "histogram-fill" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.primitive)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.histogram-fill)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }
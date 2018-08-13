{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "histogram-fill";
        version = "0.8.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov";
      homepage = "https://github.com/Shimuuar/histogram-fill/";
      url = "";
      synopsis = "Library for histograms creation.";
      description = "This is library for histograms filling. Its aim to provide\nconvenient way to create and fill histograms.";
      buildType = "Simple";
    };
    components = {
      "histogram-fill" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.primitive)
          (hsPkgs.monad-primitive)
          (hsPkgs.vector)
        ];
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.histogram-fill)
            (hsPkgs.mwc-random)
            (hsPkgs.vector)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }
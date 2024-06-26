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
      specVersion = "3.0";
      identifier = { name = "hgdal"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim     ";
      homepage = "https://wavewave.github.io/hgdal";
      url = "";
      synopsis = "Haskell binding to the GDAL library  ";
      description = "GDAL is a translator library for raster and vector geospatial data formats that is released under an X/MIT\nstyle Open Source License by the Open Source Geospatial Foundation.\nhgdal is Haskell binidng to the GDAL C++ library generated by fficxx.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fficxx-runtime" or (errorHandler.buildDepError "fficxx-runtime"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."stdcxx" or (errorHandler.buildDepError "stdcxx"))
        ];
        pkgconfig = [
          (pkgconfPkgs."gdal" or (errorHandler.pkgConfDepError "gdal"))
        ];
        buildable = true;
      };
    };
  }
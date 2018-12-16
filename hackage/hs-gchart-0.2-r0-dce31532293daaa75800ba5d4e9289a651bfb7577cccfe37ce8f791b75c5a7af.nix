{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hs-gchart";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Deepak Jois <deepak.jois@gmail.com>";
      maintainer = "deepak.jois@gmail.com";
      author = "Deepak Jois";
      homepage = "http://github.com/deepakjois/hs-gchart";
      url = "";
      synopsis = "Haskell wrapper for the Google Chart API";
      description = "This module is a wrapper around the Google Chart API. It exposes a rich\nset of Haskell data types to specify your chart data, which can then be\nconverted into a URL that generates the PNG image of the chart.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }
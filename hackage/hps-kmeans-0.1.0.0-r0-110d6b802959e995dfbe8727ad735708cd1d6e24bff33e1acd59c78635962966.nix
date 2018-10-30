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
      specVersion = "1.8";
      identifier = {
        name = "hps-kmeans";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2012 Rodrigo Gadea";
      maintainer = "rodrigo.gadea@gmail.com";
      author = "Rodrigo Gadea";
      homepage = "http://stathacking.com/hps-kmeans";
      url = "";
      synopsis = "A nice implementation of the k-Means algorithm.";
      description = "An implementation of the k-Means algorithm in Haskell that aims to be simple, readable, extendable and efficient enough to be used as a building block. More finger-typed documentation can be found in <http://stathacking.com/hps-kmeans>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "order-statistics";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/order-statistics/";
      url = "";
      synopsis = "L-Estimators for robust statistics";
      description = "L-Estimators for robust statistics";
      buildType = "Simple";
    };
    components = {
      "order-statistics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.statistics)
          (hsPkgs.math-functions)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
          (hsPkgs.containers)
        ];
      };
    };
  }
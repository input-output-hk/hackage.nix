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
        name = "DimensionalHash";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ghamrouni@iptechinside.com";
      author = "Ghassen Hamrouni";
      homepage = "";
      url = "";
      synopsis = "An n-dimensional hash using Morton numbers.";
      description = "This library compute an n-dimensional hash.\nIt transforms a list of integers [x .. y] to a single integer z.\nThe hash z has the property : if (x1 .. xn) and (y1 .. yn)\nare close then their Morton numbers are close.";
      buildType = "Simple";
    };
    components = {
      "DimensionalHash" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
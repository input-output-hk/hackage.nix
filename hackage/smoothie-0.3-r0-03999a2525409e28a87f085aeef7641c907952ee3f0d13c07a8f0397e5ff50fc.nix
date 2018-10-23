{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "smoothie";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "https://github.com/phaazon/smoothie";
      url = "";
      synopsis = "Smooth curves via several splines and polynomials.";
      description = "This package exports several splines and curves you can use\nto interpolate points in between.";
      buildType = "Simple";
    };
    components = {
      "smoothie" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.linear)
          (hsPkgs.vector)
        ];
      };
    };
  }
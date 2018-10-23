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
        name = "statistics-linreg";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "2010-2011 Alp Mestanogullari";
      maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>";
      homepage = "http://github.com/alpmestan/statistics-linreg";
      url = "";
      synopsis = "Linear regression between two samples, based on the 'statistics' package";
      description = "Provides a function to perform a linear regression between 2 samples, see the documentation of the linearRegression function. This library is based on the 'statistics' package.\n\n0.2.*: added the r-squared version and improved the performances";
      buildType = "Simple";
    };
    components = {
      "statistics-linreg" = {
        depends  = [
          (hsPkgs.statistics)
          (hsPkgs.vector)
          (hsPkgs.base)
        ];
      };
    };
  }
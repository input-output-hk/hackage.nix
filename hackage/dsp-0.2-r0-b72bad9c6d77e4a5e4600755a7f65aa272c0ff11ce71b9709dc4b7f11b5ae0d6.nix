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
      specVersion = "1.0";
      identifier = { name = "dsp"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "Matthew Donadio, 2003";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Matthew Donadio <m.p.donadio@ieee.org>";
      homepage = "http://haskelldsp.sourceforge.net/";
      url = "";
      synopsis = "Digital Signal Processing";
      description = "Digital Signal Processing, Fourier Transform, Filter design, Frequency estimation, Interpolation, Linear Algebra, Polynomials";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
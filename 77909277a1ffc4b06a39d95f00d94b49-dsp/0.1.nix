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
      specVersion = "0";
      identifier = {
        name = "dsp";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Matt Donadio, 2003";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Matt Donadio <m.p.donadio@ieee.org>";
      homepage = "http://haskelldsp.sourceforge.net/";
      url = "";
      synopsis = "Haskell Digital Signal Processing";
      description = "Digital Signal Processing, Fourier Transform, Linear Algebra, Interpolation";
      buildType = "Custom";
    };
    components = {
      "dsp" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }
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
      specVersion = "1.6";
      identifier = {
        name = "reform-hsp";
        version = "0.2.6";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, Jasper Van der Jeugt, SeeReason Partners LLC";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Add support for using HSP with Reform";
      description = "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with HSP.";
      buildType = "Simple";
    };
    components = {
      "reform-hsp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hsp)
          (hsPkgs.hsx2hs)
          (hsPkgs.reform)
          (hsPkgs.text)
        ];
      };
    };
  }
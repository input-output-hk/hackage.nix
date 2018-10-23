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
        name = "reform-happstack";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, Jasper Van der Jeugt, SeeReason Partners LLC";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Happstack support for reform.";
      description = "Reform is a library for building and validating forms using applicative functors. This package add support for using reform with Happstack.";
      buildType = "Simple";
    };
    components = {
      "reform-happstack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.happstack-server)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.reform)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }
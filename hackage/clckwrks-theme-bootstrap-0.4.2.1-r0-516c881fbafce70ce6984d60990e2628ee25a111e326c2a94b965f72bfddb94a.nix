{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "clckwrks-theme-bootstrap";
        version = "0.4.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "simple bootstrap based template for clckwrks";
      description = "A simple bootstrap based theme for clckwrks.";
      buildType = "Custom";
    };
    components = {
      "clckwrks-theme-bootstrap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clckwrks)
          (hsPkgs.jmacro)
          (hsPkgs.happstack-authenticate)
          (hsPkgs.hsp)
          (hsPkgs.hsx-jmacro)
          (hsPkgs.hsx2hs)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.web-plugins)
        ];
      };
    };
  }
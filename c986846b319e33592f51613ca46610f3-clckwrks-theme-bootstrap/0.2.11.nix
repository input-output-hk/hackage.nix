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
      specVersion = "1.8";
      identifier = {
        name = "clckwrks-theme-bootstrap";
        version = "0.2.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "simple bootstrap based template for clckwrks";
      description = "";
      buildType = "Custom";
    };
    components = {
      "clckwrks-theme-bootstrap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clckwrks)
          (hsPkgs.hsp)
          (hsPkgs.text)
        ];
      };
    };
  }
{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "clckwrks-theme-clckwrks";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "simple bootstrap based template for clckwrks";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.clckwrks)
          (hsPkgs.containers)
          (hsPkgs.happstack-authenticate)
          (hsPkgs.hsp)
          (hsPkgs.hsx2hs)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.web-plugins)
        ];
      };
    };
  }
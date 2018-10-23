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
        name = "clckwrks-theme-clckwrks";
        version = "0.3.14";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
      author = "Jeremy Shaw";
      homepage = "http://www.clckwrks.com/";
      url = "";
      synopsis = "simple bootstrap based template for clckwrks";
      description = "";
      buildType = "Custom";
    };
    components = {
      "clckwrks-theme-clckwrks" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clckwrks)
          (hsPkgs.containers)
          (hsPkgs.hsp)
          (hsPkgs.text)
        ];
      };
    };
  }
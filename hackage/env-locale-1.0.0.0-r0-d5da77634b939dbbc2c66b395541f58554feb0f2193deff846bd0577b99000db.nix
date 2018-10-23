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
        name = "env-locale";
        version = "1.0.0.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Markus Ongyerth <ongy@ongy.net>";
      author = "Markus Ongyerth";
      homepage = "https://github.com/Ongy/locale-hs";
      url = "";
      synopsis = "A (non-forking) interface to the current locale";
      description = "A sane way to get the time locale defined by environment";
      buildType = "Simple";
    };
    components = {
      "env-locale" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
        ];
      };
    };
  }
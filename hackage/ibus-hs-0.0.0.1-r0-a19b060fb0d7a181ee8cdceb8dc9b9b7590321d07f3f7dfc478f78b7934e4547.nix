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
        name = "ibus-hs";
        version = "0.0.0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "ongy@ongy.net";
      author = "Ongy";
      homepage = "https://github.com/Ongy/ibus-hs";
      url = "";
      synopsis = "A simple uncomplete ibus api";
      description = "This is very incomplete. If you need more feel free to contact me.";
      buildType = "Simple";
    };
    components = {
      "ibus-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.dbus)
          (hsPkgs.directory)
          (hsPkgs.xdg-basedir)
          (hsPkgs.unix)
        ];
      };
    };
  }
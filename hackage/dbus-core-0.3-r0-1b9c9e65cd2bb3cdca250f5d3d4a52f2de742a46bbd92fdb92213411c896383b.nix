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
        name = "dbus-core";
        version = "0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
      url = "";
      synopsis = "Low-level DBus protocol implementation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dbus-core" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.utf8-string)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.network)
        ];
      };
    };
  }
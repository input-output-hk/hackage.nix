{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test = false;
      hpc = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "dbus-core";
        version = "0.7";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "";
      url = "";
      synopsis = "Low-level D-Bus protocol implementation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.HaXml)
          (hsPkgs.pretty)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.network)
        ];
      };
      exes = {
        "dbus-core-tests" = {
          depends = pkgs.lib.optionals (flags.test) [
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }
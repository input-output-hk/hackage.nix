{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      hpc = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dbus-core";
          version = "0.6";
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
        "dbus-core" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.data-binary-ieee754
            hsPkgs.HaXml
            hsPkgs.pretty
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.unix
            hsPkgs.network
          ];
        };
        exes = {
          "tests" = {
            depends  = pkgs.lib.optionals _flags.test [
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }
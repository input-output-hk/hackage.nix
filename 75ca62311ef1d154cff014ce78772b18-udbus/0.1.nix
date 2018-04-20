{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "udbus";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-udbus";
        url = "";
        synopsis = "Small DBus implementation";
        description = "Small and flexible implementation of the dbus protocol.";
        buildType = "Simple";
      };
      components = {
        udbus = {
          depends  = [
            hsPkgs.base
            hsPkgs.cereal
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.mtl
            hsPkgs.unix
            hsPkgs.ghc-prim
          ];
        };
        exes = {
          dbus = {
            depends  = pkgs.lib.optional _flags.executable hsPkgs.network;
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hscamwire";
          version = "0.2.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "fred.ross@epfl.ch";
        author = "Frederick Ross";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings to IIDC1394 cameras, via Camwire";
        description = "These are idiomatic bindings to the Camwire library, which interfaces with IIDC1394-compliant cameras on Linux.";
        buildType = "Simple";
      };
      components = {
        hscamwire = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.array
            hsPkgs.time
          ];
          libs = [
            pkgs.dc1394_control
            pkgs.raw1394
            pkgs.camwire_1394
          ];
        };
      };
    }
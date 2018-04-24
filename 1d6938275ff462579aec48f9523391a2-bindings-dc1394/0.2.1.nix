{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bindings-dc1394";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aleator@gmail.com";
        author = "Ville Tirronen";
        homepage = "http://github.com/aleator/bindings-dc1394";
        url = "";
        synopsis = "Library for using firewire (iidc-1394) cameras";
        description = "Low level bindings for libdc1394 (for driving firewire cameras).\n\nVersion 0.1:\n\nPartial bindings that allow setting basic camera flags and acquiring\nimages without dma.\n";
        buildType = "Simple";
      };
      components = {
        bindings-dc1394 = {
          depends  = [
            hsPkgs.bindings-DSL
            hsPkgs.base
          ];
          libs = [ pkgs.dc1394 ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }
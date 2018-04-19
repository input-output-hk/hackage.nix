{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-bytestring";
          version = "0.1.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Johan Tibell <johan.tibell@gmail.com>";
        author = "Johan Tibell <johan.tibell@gmail.com>";
        homepage = "http://github.com/tibbe/network-bytestring";
        url = "";
        synopsis = "Fast, memory-efficient, low-level networking";
        description = "Fast, memory-efficient, low-level socket functions\nthat use 'Data.ByteString's instead of 'String's.";
        buildType = "Custom";
      };
      components = {
        network-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
          ];
        };
      };
    }
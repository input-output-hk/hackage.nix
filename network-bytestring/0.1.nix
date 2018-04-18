{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "network-bytestring";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johan.tibell@gmail.com";
        author = "Johan Tibell";
        homepage = "";
        url = "";
        synopsis = "Fast and memory efficient low-level networking";
        description = "Faster and more memory efficient low-level socket functions using\n'Data.ByteString's instead of 'String's.";
        buildType = "Custom";
      };
      components = {
        network-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.HUnit
            hsPkgs.network
          ];
        };
      };
    }
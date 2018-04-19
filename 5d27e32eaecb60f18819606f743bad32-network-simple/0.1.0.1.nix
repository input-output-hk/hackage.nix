{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "network-simple";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Renzo Carbonara 2013";
        maintainer = "renzocarbonaraλgmail.com";
        author = "Renzo Carbonara";
        homepage = "https://github.com/k0001/network-simple";
        url = "";
        synopsis = "Simple network sockets usage patterns.";
        description = "Simple network sockets usage patterns.";
        buildType = "Simple";
      };
      components = {
        network-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
          ];
        };
      };
    }
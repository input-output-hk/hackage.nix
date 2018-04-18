{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sockaddr";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
        author = "Kazu Yamamoto <kazu@iij.ad.jp>";
        homepage = "";
        url = "";
        synopsis = "Printing SockAddr";
        description = "Printing SockAddr";
        buildType = "Simple";
      };
      components = {
        sockaddr = {
          depends  = [
            hsPkgs.base
            hsPkgs.byteorder
            hsPkgs.bytestring
            hsPkgs.network
          ];
        };
      };
    }
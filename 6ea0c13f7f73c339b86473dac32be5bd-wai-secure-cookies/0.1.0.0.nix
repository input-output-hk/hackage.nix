{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-secure-cookies";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "© حبيب الامين‪ 2017";
        maintainer = "ha.alamin@gmail.com";
        author = "Habib Alamin";
        homepage = "https://github.com/habibalamin/wai-secure-cookies";
        url = "";
        synopsis = "";
        description = "WAI middleware to automatically encrypt and sign cookies";
        buildType = "Simple";
      };
      components = {
        "wai-secure-cookies" = {
          depends  = [
            hsPkgs.base
            hsPkgs.protolude
            hsPkgs.wai
            hsPkgs.cryptonite
            hsPkgs.bytestring
            hsPkgs.memory
            hsPkgs.random
            hsPkgs.split
            hsPkgs.http-types
          ];
        };
        exes = {
          "waicookie-genkey" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cryptonite
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.memory
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "chatwork";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 MATSUBARA Nobutada";
        maintainer = "MATSUBARA Nobutada";
        author = "MATSUBARA Nobutada";
        homepage = "https://github.com/matsubara0507/chatwork#readme";
        url = "";
        synopsis = "The ChatWork API in Haskell";
        description = "See README at <https://github.com/matsubara0507/chatwork#readme>";
        buildType = "Simple";
      };
      components = {
        "chatwork" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-casing
            hsPkgs.bytestring
            hsPkgs.connection
            hsPkgs.data-default-class
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.req
            hsPkgs.text
          ];
        };
      };
    }
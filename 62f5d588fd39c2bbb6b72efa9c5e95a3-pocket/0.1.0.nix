{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.21";
        identifier = {
          name = "pocket";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2017 Juan Pedro Villa Isaza";
        maintainer = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
        author = "Juan Pedro Villa Isaza <jpvillaisaza@gmail.com>";
        homepage = "https://github.com/jpvillaisaza/pocket-haskell";
        url = "";
        synopsis = "Bindings for the Pocket API";
        description = "Haskell bindings for the Pocket API.";
        buildType = "Simple";
      };
      components = {
        "pocket" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }
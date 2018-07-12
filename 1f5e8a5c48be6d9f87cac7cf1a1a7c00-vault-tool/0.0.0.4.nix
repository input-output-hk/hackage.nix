{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vault-tool";
          version = "0.0.0.4";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mutantlemon@gmail.com";
        author = "Bit Connor";
        homepage = "https://github.com/bitc/hs-vault-tool";
        url = "";
        synopsis = "Client library for HashiCorp's Vault tool (via HTTP API)";
        description = "Client library for HashiCorp's Vault tool (via HTTP API)";
        buildType = "Simple";
      };
      components = {
        "vault-tool" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.http-client-tls
            hsPkgs.aeson
            hsPkgs.unordered-containers
          ];
        };
      };
    }
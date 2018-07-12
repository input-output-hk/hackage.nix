{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "crypto-pubkey-types";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-crypto-pubkey-types";
        url = "";
        synopsis = "Generic cryptography Public keys algorithm types";
        description = "Generic cryptography public keys algorithm types";
        buildType = "Simple";
      };
      components = {
        "crypto-pubkey-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.asn1-types
          ];
        };
      };
    }
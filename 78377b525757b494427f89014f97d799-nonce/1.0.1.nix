{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nonce";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Prowdsponsor";
        maintainer = "Prowdsponsor <opensource@prowdsponsor.com>";
        author = "Felipe Lessa <felipe.lessa@prowdsponsor.com>";
        homepage = "https://github.com/prowdsponsor/nonce";
        url = "";
        synopsis = "Generate cryptographic nonces.";
        description = "According to the Wikipedia, a nonce is an arbitrary number used\nonly once in a cryptographic communication.  This package\ncontain helper functions for generating nonces.\n\nThere are many kinds of nonces used in different situations.\nIt's not guaranteed that by using the nonces from this package\nyou won't have any security issues.  Please make sure that the\nnonces generated via this package are usable on your design.";
        buildType = "Simple";
      };
      components = {
        nonce = {
          depends  = [
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.crypto-random
            hsPkgs.cprng-aes
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
      };
    }
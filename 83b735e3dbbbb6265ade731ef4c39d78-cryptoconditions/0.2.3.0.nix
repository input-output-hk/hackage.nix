{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cryptoconditions";
          version = "0.2.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2017 Scott Sadler";
        maintainer = "Scott Sadler <scott@scottsadler.de>";
        author = "Scott Sadler";
        homepage = "https://github.com/libscott/cryptoconditions-hs";
        url = "";
        synopsis = "Interledger Crypto-Conditions";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "cryptoconditions" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.asn1-encoding
            hsPkgs.asn1-parse
            hsPkgs.asn1-types
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.memory
            hsPkgs.text
          ];
        };
        tests = {
          "cryptoconditions-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cryptoconditions
              hsPkgs.aeson
              hsPkgs.asn1-encoding
              hsPkgs.base16-bytestring
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.cryptonite
              hsPkgs.aeson-quick
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.tasty
              hsPkgs.tasty-hunit
            ];
          };
        };
      };
    }
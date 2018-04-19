{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "paypal-adaptive-hoops";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@housejeffries.com";
        author = "Ian Grant Jeffries";
        homepage = "https://github.com/fanjam/paypal-adaptive-hoops";
        url = "";
        synopsis = "Client for a limited part of PayPal's Adaptive Payments API";
        description = "";
        buildType = "Simple";
      };
      components = {
        paypal-adaptive-hoops = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.errors
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.lens-aeson
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.wreq
          ];
        };
        exes = {
          example = {
            depends  = [
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.paypal-adaptive-hoops
            ];
          };
        };
        tests = {
          unit = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default
              hsPkgs.HUnit
              hsPkgs.paypal-adaptive-hoops
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
            ];
          };
        };
      };
    }
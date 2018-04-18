{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ziptastic-client";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Elliot Cameron and Ziptastic and Grafted-In LLC";
        maintainer = "elliot@graftedin.io";
        author = "Elliot Cameron";
        homepage = "https://github.com/Ziptastic/ziptastic-haskell#readme";
        url = "";
        synopsis = "A type-safe client for the Ziptastic API for doing forward and reverse geocoding.";
        description = "A convenient and type-safe client library for the\nZiptastic (<https://www.getziptastic.com/>) API providing forward and reverse\ngeocoding via country, zip code (postal code), latitude, and longitude.\n\nThis package is maintained by Grafted-In (<https://www.graftedin.io/>).";
        buildType = "Simple";
      };
      components = {
        ziptastic-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.iso3166-country-codes
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
            hsPkgs.ziptastic-core
          ];
        };
        tests = {
          test-client = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.http-client
              hsPkgs.http-client-tls
              hsPkgs.http-types
              hsPkgs.iso3166-country-codes
              hsPkgs.servant-client
              hsPkgs.ziptastic-client
            ];
          };
        };
      };
    }
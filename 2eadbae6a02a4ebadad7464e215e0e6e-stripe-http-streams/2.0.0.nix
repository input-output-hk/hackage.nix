{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stripe-http-streams";
          version = "2.0.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2014 David M. Johnson";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "";
        description = "\n<<https://stripe.com/img/navigation/logo@2x.png>>\n\n[Access Stripe API using http-streams]\nThis package provides access to the Stripe API using `stripe-core` and `http-streams`. See also the `stripe` package.";
        buildType = "Simple";
      };
      components = {
        "stripe-http-streams" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.HsOpenSSL
            hsPkgs.http-streams
            hsPkgs.io-streams
            hsPkgs.stripe-core
            hsPkgs.text
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.HsOpenSSL
              hsPkgs.base
              hsPkgs.free
              hsPkgs.hspec
              hsPkgs.http-streams
              hsPkgs.stripe-core
              hsPkgs.stripe-http-streams
              hsPkgs.stripe-tests
            ];
          };
        };
      };
    }
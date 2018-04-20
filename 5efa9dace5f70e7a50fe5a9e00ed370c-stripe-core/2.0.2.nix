{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stripe-core";
          version = "2.0.2";
        };
        license = "MIT";
        copyright = "Copyright (c) 2016 David M. Johnson, Jeremy Shaw";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson, Jeremy Shaw";
        homepage = "https://github.com/dmjio/stripe-haskell";
        url = "";
        synopsis = "Stripe API for Haskell - Pure Core";
        description = "\n<<https://stripe.com/img/navigation/logo@2x.png>>\n\n[Pure API Wrapper]\n`stripe-core` provides a complete binding to the Stripe API. `stripe-core` provides pure wrappers around all the Stripe API objects and methods. `stripe-core` is pure and is not tied to any particular HTTP client library. End users will typically install the `stripe` package which pulls in the `stripe-http-streams` library to obtain a complete set of functionality.";
        buildType = "Simple";
      };
      components = {
        stripe-core = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
          ];
        };
      };
    }
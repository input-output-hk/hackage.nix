{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      http-streams = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stripe-haskell";
          version = "2.4.0";
        };
        license = "MIT";
        copyright = "Copyright (c) 2016 David M. Johnson, Jeremy Shaw";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson, Jeremy Shaw";
        homepage = "https://github.com/dmjio/stripe";
        url = "";
        synopsis = "Stripe API for Haskell";
        description = "For usage information please consult README.md";
        buildType = "Simple";
      };
      components = {
        stripe-haskell = {
          depends  = [
            hsPkgs.base
            hsPkgs.stripe-core
          ] ++ (if _flags.http-streams
            then [
              hsPkgs.stripe-http-streams
            ]
            else [
              hsPkgs.stripe-http-client
            ]);
        };
      };
    }
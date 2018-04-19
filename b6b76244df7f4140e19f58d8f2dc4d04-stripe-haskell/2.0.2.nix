{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stripe-haskell";
          version = "2.0.2";
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
            hsPkgs.stripe-http-streams
          ];
        };
      };
    }
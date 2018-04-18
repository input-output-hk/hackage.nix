{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mondo";
          version = "0.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael.gale@cl.cam.ac.uk";
        author = "Michael B. Gale";
        homepage = "";
        url = "";
        synopsis = "Haskell bindings for the Mondo API";
        description = "Provides Haskell bindings for the Mondo API.";
        buildType = "Simple";
      };
      components = {
        mondo = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.transformers
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.authenticate-oauth
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.containers
          ];
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "io-streams-http";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vertigo Media Inc. 2014-2015 (c)";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "http-client for io-streams";
        description = "Thin io-streams wrapper for http-client";
        buildType = "Simple";
      };
      components = {
        io-streams-http = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.io-streams
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }
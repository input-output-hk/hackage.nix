{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "google-translate";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "David Johnson (c) 2016";
        maintainer = "djohnson.m@gmail.com";
        author = "David Johnson";
        homepage = "";
        url = "";
        synopsis = "Google Translate API bindings";
        description = "Google Translate Library";
        buildType = "Simple";
      };
      components = {
        google-translate = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.either
            hsPkgs.servant
            hsPkgs.servant-client
            hsPkgs.text
          ];
        };
      };
    }
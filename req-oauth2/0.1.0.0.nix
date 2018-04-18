{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "req-oauth2";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2018 Richard Cook";
        maintainer = "rcook@rcook.org";
        author = "Richard Cook";
        homepage = "https://github.com/rcook/req-oauth2#readme";
        url = "";
        synopsis = "Provides OAuth2 authentication for use with Req";
        description = "This package adds OAuth2 authentication to Req.";
        buildType = "Simple";
      };
      components = {
        req-oauth2 = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.modern-uri
            hsPkgs.req
            hsPkgs.req-url-extra
            hsPkgs.text
            hsPkgs.transformers
          ];
        };
        exes = {
          req-oauth2-app = {
            depends  = [ hsPkgs.base ];
          };
        };
        tests = {
          req-oauth2-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
            ];
          };
        };
      };
    }
{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-auth-oauth2";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Pat Brisbin <pat@thoughtbot.com>";
        author = "Tom Streller";
        homepage = "http://github.com/thoughtbot/yesod-auth-oauth2";
        url = "";
        synopsis = "OAuth 2.0 authentication plugins";
        description = "Library to authenticate with OAuth 2.0 for Yesod web applications.";
        buildType = "Simple";
      };
      components = {
        "yesod-auth-oauth2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.aeson
            hsPkgs.yesod-core
            hsPkgs.authenticate
            hsPkgs.random
            hsPkgs.yesod-auth
            hsPkgs.text
            hsPkgs.yesod-form
            hsPkgs.transformers
            hsPkgs.hoauth2
            hsPkgs.lifted-base
          ] ++ (if _flags.network-uri
            then [ hsPkgs.network-uri ]
            else [ hsPkgs.network ]);
        };
      };
    }
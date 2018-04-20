{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      ghc7 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yesod-auth-oauth2";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Streller";
        author = "Tom Streller";
        homepage = "http://github.com/scan/yesod-auth-oauth2";
        url = "";
        synopsis = "Library to authenticate with OAuth 2.0 for Yesod web applications.";
        description = "OAuth 2.0 authentication";
        buildType = "Simple";
      };
      components = {
        yesod-auth-oauth2 = {
          depends  = [
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.aeson
            hsPkgs.yesod-core
            hsPkgs.yesod-auth
            hsPkgs.text
            hsPkgs.yesod-form
            hsPkgs.transformers
            hsPkgs.hoauth2
            hsPkgs.lifted-base
          ] ++ [ hsPkgs.base ];
        };
      };
    }
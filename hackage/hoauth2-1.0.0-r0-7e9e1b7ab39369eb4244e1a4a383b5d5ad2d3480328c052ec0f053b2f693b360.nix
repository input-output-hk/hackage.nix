{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hoauth2";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Haisheng Wu";
      maintainer = "Haisheng Wu <freizl@gmail.com>";
      author = "Haisheng Wu";
      homepage = "https://github.com/freizl/hoauth2";
      url = "";
      synopsis = "Haskell OAuth2 authentication client";
      description = "Haskell OAuth2 authentication client. Tested with the following services:\n\n* Google: <https://developers.google.com/accounts/docs/OAuth2WebServer>\n\n* Github: <http://developer.github.com/v3/oauth/>\n\n* Facebook: <http://developers.facebook.com/docs/facebook-login/>\n\n* Fitbit: <http://dev.fitbit.com/docs/oauth2/>\n\n* StackExchange: <https://api.stackexchange.com/docs/authentication>\n\n* DropBox: <https://www.dropbox.com/developers/reference/oauth-guide>\n\n* Weibo: <http://open.weibo.com/wiki/Oauth2>\n\n* Douban: <http://developers.douban.com/wiki/?title=oauth2>";
      buildType = "Simple";
    };
    components = {
      "hoauth2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-bytestring)
          (hsPkgs.microlens)
          (hsPkgs.exceptions)
        ];
      };
      exes = {
        "test-weibo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.uri-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.hoauth2)
          ];
        };
        "test-google" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.uri-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.hoauth2)
          ];
        };
        "test-github" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.uri-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.hoauth2)
          ];
        };
        "test-douban" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.uri-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.hoauth2)
          ];
        };
        "test-facebook" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.uri-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.hoauth2)
          ];
        };
        "test-fitbit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.uri-bytestring)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.hoauth2)
          ];
        };
        "test-stackexchange" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.uri-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.hoauth2)
          ];
        };
        "test-dropbox" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.http-types)
            (hsPkgs.http-conduit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.uri-bytestring)
            (hsPkgs.aeson)
            (hsPkgs.hoauth2)
          ];
        };
      };
    };
  }
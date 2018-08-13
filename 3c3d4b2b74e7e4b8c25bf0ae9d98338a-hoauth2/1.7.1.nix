{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hoauth2";
        version = "1.7.1";
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
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-bytestring)
          (hsPkgs.uri-bytestring-aeson)
          (hsPkgs.microlens)
          (hsPkgs.exceptions)
        ];
      };
      exes = {
        "demo-server" = {
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
            (hsPkgs.microlens)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai-extra)
            (hsPkgs.wai-middleware-static)
            (hsPkgs.mustache)
            (hsPkgs.mtl)
            (hsPkgs.scotty)
            (hsPkgs.binary)
            (hsPkgs.parsec)
            (hsPkgs.hashable)
            (hsPkgs.hoauth2)
          ];
        };
      };
    };
  }
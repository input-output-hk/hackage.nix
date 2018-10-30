{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yesod-auth-oauth2";
        version = "0.4.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Tom Streller";
      homepage = "http://github.com/thoughtbot/yesod-auth-oauth2";
      url = "";
      synopsis = "OAuth 2.0 authentication plugins";
      description = "Library to authenticate with OAuth 2.0 for Yesod web applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.errors)
          (hsPkgs.hoauth2)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.microlens)
          (hsPkgs.random)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uri-bytestring)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-core)
        ];
      };
      exes = {
        "yesod-auth-oauth2-example" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.http-conduit)
            (hsPkgs.load-env)
            (hsPkgs.text)
            (hsPkgs.warp)
            (hsPkgs.yesod)
            (hsPkgs.yesod-auth)
            (hsPkgs.yesod-auth-oauth2)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.uri-bytestring)
            (hsPkgs.yesod-auth-oauth2)
          ];
        };
      };
    };
  }
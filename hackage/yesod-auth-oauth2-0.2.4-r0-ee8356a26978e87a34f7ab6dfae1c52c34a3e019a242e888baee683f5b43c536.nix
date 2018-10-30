{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-uri = true;
      example = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-auth-oauth2";
        version = "0.2.4";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.aeson)
          (hsPkgs.yesod-core)
          (hsPkgs.authenticate)
          (hsPkgs.random)
          (hsPkgs.yesod-auth)
          (hsPkgs.text)
          (hsPkgs.yesod-form)
          (hsPkgs.transformers)
          (hsPkgs.hoauth2)
          (hsPkgs.lifted-base)
          (hsPkgs.vector)
        ] ++ (if flags.network-uri
          then [ (hsPkgs.network-uri) ]
          else [ (hsPkgs.network) ]);
      };
      exes = {
        "yesod-auth-oauth2-example" = {
          depends  = [
            (hsPkgs.base)
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
            (hsPkgs.yesod-auth-oauth2)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }
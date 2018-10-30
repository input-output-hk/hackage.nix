{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "google-oauth2";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
      author = "Pat Brisbin <pbrisbin@gmail.com>";
      homepage = "https://github.com/pbrisbin/google-oauth2#readme";
      url = "";
      synopsis = "Google OAuth2 token negotiation";
      description = "See https://github.com/pbrisbin/google-oauth2#readme";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.hoauth2)
          (hsPkgs.http-client-tls)
          (hsPkgs.safe-exceptions)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uri-bytestring)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.google-oauth2)
            (hsPkgs.hoauth2)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.load-env)
            (hsPkgs.text)
          ];
        };
      };
    };
  }
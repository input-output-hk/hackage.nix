{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-auth";
        version = "0.1.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "alexey@fpcomplete.com";
      author = "Alexey Kuleshevich";
      homepage = "";
      url = "";
      synopsis = "Authentication middleware that secures WAI application";
      description = "See README";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-auth" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cereal)
          (hsPkgs.clientsession)
          (hsPkgs.cookie)
          (hsPkgs.exceptions)
          (hsPkgs.hoauth2)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-reverse-proxy)
          (hsPkgs.http-types)
          (hsPkgs.regex-posix)
          (hsPkgs.safe-exceptions)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.unix-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vault)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai-extra)
          (hsPkgs.yaml)
        ];
      };
      exes = {
        "wai-auth" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.clientsession)
            (hsPkgs.optparse-simple)
            (hsPkgs.wai-middleware-auth)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }
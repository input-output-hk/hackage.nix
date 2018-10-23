{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = {
        name = "wai-middleware-travisci";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/wai-middleware-travisci";
      url = "";
      synopsis = "WAI middleware for authenticating webhook payloads from Travis CI";
      description = "This package provides a simple WAI middleware for authenticating webhook\npayloads from @travis-ci.com@.";
      buildType = "Simple";
    };
    components = {
      "wai-middleware-travisci" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.vault)
          (hsPkgs.wai)
        ];
      };
    };
  }
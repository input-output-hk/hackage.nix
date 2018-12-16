{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-auth-hmac";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Al Zohali <zohl@fmap.me>";
      author = "Al Zohali";
      homepage = "";
      url = "";
      synopsis = "Authentication via HMAC";
      description = "Authentication via hashed message code (HMAC) based on RFC1945.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
          (hsPkgs.string-class)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai)
        ];
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.blaze-html)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.mtl)
            (hsPkgs.http-media)
            (hsPkgs.random)
            (hsPkgs.servant)
            (hsPkgs.servant-auth-hmac)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.string-class)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.wai)
            (hsPkgs.warp)
          ];
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.random)
            (hsPkgs.servant)
            (hsPkgs.servant-auth-hmac)
            (hsPkgs.servant-server)
            (hsPkgs.string-class)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.with-location)
          ];
        };
      };
    };
  }
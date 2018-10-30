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
        name = "wai-middleware-hmac";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "https://github.com/creichert/wai-middleware-hmac";
      url = "";
      synopsis = "HMAC Authentication Middleware for WAI";
      description = "Wai HMAC Authentication Middleware implementation.\n\nThis middleware closely models the Amazon AWS Authentication scheme.\nBy default, this middleware will also default to using the HTTP\nAuthorization header.\n\nSee @wai-middleware-hmac-client@ for ready-to-use client module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.cryptohash)
          (hsPkgs.http-types)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.word8)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.wai-middleware-hmac)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.HUnit)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
          ];
        };
        "haddock" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
          ];
        };
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }
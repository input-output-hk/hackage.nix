{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "telegram-api";
        version = "0.5.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexey Rodiontsev (c) 2016";
      maintainer = "alex.rodiontsev@gmail.com";
      author = "Alexey Rodiontsev";
      homepage = "http://github.com/klappvisor/haskell-telegram-api#readme";
      url = "";
      synopsis = "Telegram Bot API bindings";
      description = "High-level bindings to the Telegram Bot API";
      buildType = "Simple";
    };
    components = {
      "telegram-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mime-types)
          (hsPkgs.bytestring)
          (hsPkgs.string-conversions)
        ];
      };
      tests = {
        "telegram-api-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.hjpath)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.hspec)
            (hsPkgs.optparse-applicative)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.telegram-api)
            (hsPkgs.http-types)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }
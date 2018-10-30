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
        name = "telegram-api";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexey Rodiontsev (c) 2016";
      maintainer = "alex.rodiontsev@gmail.com";
      author = "Alexey Rodiontsev";
      homepage = "http://github.com/klappvisor/telegram-api#readme";
      url = "";
      synopsis = "Telegram Bot API bindings";
      description = "High-level bindings to the Telegram Bots API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.either)
        ];
      };
      tests = {
        "telegram-api-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.telegram-api)
            (hsPkgs.http-types)
          ];
        };
      };
    };
  }
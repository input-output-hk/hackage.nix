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
        name = "telegram-bot";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexander Krupenkin";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/akru/telegram-bot#readme";
      url = "";
      synopsis = "Telegram Bot microframework for Haskell";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "telegram-bot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-client-tls)
          (hsPkgs.transformers)
          (hsPkgs.telegram-api)
          (hsPkgs.http-client)
          (hsPkgs.containers)
          (hsPkgs.pipes)
          (hsPkgs.text)
        ];
      };
      exes = {
        "hello-bot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.telegram-bot)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "telegram-bot-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.telegram-bot)
          ];
        };
      };
    };
  }
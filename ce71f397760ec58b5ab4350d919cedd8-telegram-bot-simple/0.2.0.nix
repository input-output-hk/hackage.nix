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
        name = "telegram-bot-simple";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Nickolay Kudasov";
      maintainer = "nickolay.kudasov@gmail.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/fizruk/telegram-bot-simple#readme";
      url = "";
      synopsis = "Easy to use library for building Telegram bots.";
      description = "Please see the README on Github at <https://github.com/fizruk/telegram-bot-simple#readme>";
      buildType = "Simple";
    };
    components = {
      "telegram-bot-simple" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cron)
          (hsPkgs.hashable)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.pretty-show)
          (hsPkgs.profunctors)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "example-echo-bot" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cron)
            (hsPkgs.hashable)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.profunctors)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.telegram-bot-simple)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
        "example-todo-bot" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cron)
            (hsPkgs.hashable)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.pretty-show)
            (hsPkgs.profunctors)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.telegram-bot-simple)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }
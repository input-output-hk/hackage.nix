{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "halma-telegram-bot"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2016-2017 Tim Baumann";
      maintainer = "tim@timbaumann.info";
      author = "Tim Baumann";
      homepage = "https://github.com/timjb/halma";
      url = "";
      synopsis = "Telegram bot for playing Halma";
      description = "Play Halma (aka Chinese Checkers) in Telegram against your friends or an AI";
      buildType = "Simple";
      };
    components = {
      exes = {
        "halma-telegram-bot" = {
          depends = [
            (hsPkgs.halma)
            (hsPkgs.base)
            (hsPkgs.telegram-api)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.servant-client)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.data-default)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.exceptions)
            (hsPkgs.temporary)
            (hsPkgs.diagrams-lib)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.directory)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.optparse-applicative)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }
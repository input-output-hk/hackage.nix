{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      disable-docs = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "discord-hs";
        version = "0.2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jkoike2013@gmail.com";
      author = "Joshua Koike";
      homepage = "https://github.com/jano017/Discord.hs";
      url = "";
      synopsis = "An API wrapper for Discord in Haskell";
      description = "Provides an api wrapper and framework for writing\nbots against the Discord <https://discordapp.com/> API.\nIf for some reason hackage/stackage is failing to build\ndocumentation, a backup set is hosted at <https://jano017.github.io/Discord.hs/>";
      buildType = "Simple";
    };
    components = {
      "discord-hs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.hashable)
          (hsPkgs.hslogger)
          (hsPkgs.http-client)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.pipes)
          (hsPkgs.stm-conduit)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.url)
          (hsPkgs.vector)
          (hsPkgs.websockets)
          (hsPkgs.req)
          (hsPkgs.wuss)
        ];
      };
      exes = {
        "docs" = {
          depends  = pkgs.lib.optionals (!flags.disable-docs) [
            (hsPkgs.base)
            (hsPkgs.hakyll)
            (hsPkgs.split)
          ];
        };
      };
    };
  }
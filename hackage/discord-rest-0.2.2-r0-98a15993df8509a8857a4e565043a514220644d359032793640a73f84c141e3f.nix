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
        name = "discord-rest";
        version = "0.2.2";
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
      "discord-rest" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.discord-types)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.comonad)
          (hsPkgs.data-default)
          (hsPkgs.hashable)
          (hsPkgs.hslogger)
          (hsPkgs.http-client)
          (hsPkgs.mtl)
          (hsPkgs.req)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.url)
        ];
      };
    };
  }
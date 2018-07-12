{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "discord-hs";
          version = "0.4.2";
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
            hsPkgs.base
            hsPkgs.discord-types
            hsPkgs.discord-rest
            hsPkgs.discord-gateway
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.url
            hsPkgs.websockets
          ];
        };
      };
    }
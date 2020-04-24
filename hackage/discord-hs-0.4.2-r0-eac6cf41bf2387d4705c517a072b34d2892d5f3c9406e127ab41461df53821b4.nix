{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "discord-hs"; version = "0.4.2"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."discord-types" or ((hsPkgs.pkgs-errors).buildDepError "discord-types"))
          (hsPkgs."discord-rest" or ((hsPkgs.pkgs-errors).buildDepError "discord-rest"))
          (hsPkgs."discord-gateway" or ((hsPkgs.pkgs-errors).buildDepError "discord-gateway"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          ];
        buildable = true;
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "discord-gateway"; version = "0.2.2"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
          (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
          (hsPkgs."wuss" or ((hsPkgs.pkgs-errors).buildDepError "wuss"))
          (hsPkgs."discord-types" or ((hsPkgs.pkgs-errors).buildDepError "discord-types"))
          ];
        buildable = true;
        };
      };
    }
{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hpg"; version = "0.4"; };
      license = "ISC";
      copyright = "";
      maintainer = "fritjof@alokat.org";
      author = "Fritjof Bornebusch";
      homepage = "https://git.alokat.org/hpg";
      url = "";
      synopsis = "no";
      description = "the haskell password generator.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hpg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (pkgs.lib).optional (system.isOpenbsd) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
          };
        };
      };
    }
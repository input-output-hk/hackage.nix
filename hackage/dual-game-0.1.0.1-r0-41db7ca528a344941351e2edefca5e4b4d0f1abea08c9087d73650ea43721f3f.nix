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
      identifier = { name = "dual-game"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "francygazz@gmail.com";
      author = "Francesco Gazzetta";
      homepage = "https://github.com/fgaz/dual";
      url = "";
      synopsis = "Network multiplayer 2D shooting game";
      description = "Network multiplayer 2D shooting game inspired from \"dual\"\nfor Andriod.\nStart the server with @dual \\<port\\>@\nand the client with @dual \\<server ip\\> \\<server port\\>@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dual" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }
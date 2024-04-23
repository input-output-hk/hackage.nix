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
      identifier = { name = "blubber"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "(c) plaimi 2015";
      maintainer = "blubber@plaimi.net";
      author = "plaimi";
      homepage = "https://secure.plaimi.net/games/blubber.html";
      url = "";
      synopsis = "The blubber client; connects to the blubber\nserver.";
      description = "The blubber client. blubber is an arcade game in\nwhich the player tries to build the biggest blub\nby blubberping the other blubs before they\nblubber the player's blub.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "blubber" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blubber-server" or (errorHandler.buildDepError "blubber-server"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }
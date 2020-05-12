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
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ansi-terminal-game"; version = "0.2.1.0"; };
      license = "GPL-3.0-only";
      copyright = "© 2017-2018 Francesco Ariis";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "none-yet";
      url = "";
      synopsis = "sdl-like functions for terminal applications, based on\nansi-terminal";
      description = "Library which aims to replicate standard 2d game\nfunctions (blit, ticks, timers, etc.) in a terminal\nsetting.\nAims to be cross compatible (based on \"ansi-terminal\",\nno unix-only dependencies), practical.\nThis is a proof of concept release, used to implement\n@http://www.ariis.it/static/articles/animascii/page.html@\n. See example folder for some minimal programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."linebreak" or (errorHandler.buildDepError "linebreak"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."timers-tick" or (errorHandler.buildDepError "timers-tick"))
          ];
        buildable = true;
        };
      exes = {
        "alone-in-a-room" = {
          depends = (pkgs.lib).optionals (flags.example) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-terminal-game" or (errorHandler.buildDepError "ansi-terminal-game"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."linebreak" or (errorHandler.buildDepError "linebreak"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
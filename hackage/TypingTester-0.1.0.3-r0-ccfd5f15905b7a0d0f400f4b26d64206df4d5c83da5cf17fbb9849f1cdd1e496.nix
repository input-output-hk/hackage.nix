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
      specVersion = "1.8";
      identifier = { name = "TypingTester"; version = "0.1.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hawk.alan@gmail.com";
      author = "Alan Hawkins";
      homepage = "https://github.com/xpika/typingtester";
      url = "";
      synopsis = "Command Line Typing speed tester";
      description = "Prompts the user to type anything they wish. Notifies them of how long it took.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "typingtester" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }
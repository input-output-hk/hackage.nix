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
      specVersion = "2.2";
      identifier = { name = "wd"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2021 Kazuki Okamoto (岡本和樹)";
      maintainer = "kazuki.okamoto@kakkun61.com";
      author = "Kazuki Okamoto (岡本和樹)";
      homepage = "https://github.com/kakkun61/wd";
      url = "";
      synopsis = "Run a command on a specified directory.";
      description = "This is a command to run another command on a specified directory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "wd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
      };
    };
  }
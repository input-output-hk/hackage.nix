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
      specVersion = "1.14";
      identifier = { name = "sys-auth-smbclient"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "(c) 2013 Kazuo Koga <obiwanko@me.com>";
      maintainer = "Kazuo Koga <obiwanko@me.com>";
      author = "Kazuo Koga <obiwanko@me.com>";
      homepage = "https://github.com/kkazuo/sys-auth-smbclient";
      url = "";
      synopsis = "Auth with smbclient command";
      description = "This module provides a interface for executing\n@smbclient@ commands.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
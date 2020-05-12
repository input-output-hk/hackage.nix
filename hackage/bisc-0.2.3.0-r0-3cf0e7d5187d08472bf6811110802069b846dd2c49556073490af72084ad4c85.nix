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
      identifier = { name = "bisc"; version = "0.2.3.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2019 Michele Guerini Rocco";
      maintainer = "rnhmjoj@inventati.org";
      author = "Michele Guerini Rocco";
      homepage = "https://maxwell.ydns.eu/git/rnhmjoj/bisc";
      url = "";
      synopsis = "A small tool that clears qutebrowser cookies.";
      description = "Bisc clears qutebrowser cookies and javascript local storage\nby domains, stored in a whitelist.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bisc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."selda" or (errorHandler.buildDepError "selda"))
            (hsPkgs."selda-sqlite" or (errorHandler.buildDepError "selda-sqlite"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            ];
          buildable = true;
          };
        };
      };
    }
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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "miniplex"; version = "0.3.3"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Lukas Mai <l.mai@web.de>";
      author = "Lukas Mai";
      homepage = "";
      url = "";
      synopsis = "simple 1-to-N interprocess communication";
      description = "This module provides interprocess communication channels. This is meant\nto be used by logger-like programs that want to send status reports to\nN listeners (where N >= 0).";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."colock" or (errorHandler.buildDepError "colock"))
          ] ++ (pkgs.lib).optional (flags.small_base) (hsPkgs."directory" or (errorHandler.buildDepError "directory"));
        buildable = true;
        };
      exes = {
        "plox-read" = { buildable = true; };
        "plox-write" = { buildable = true; };
        };
      };
    }
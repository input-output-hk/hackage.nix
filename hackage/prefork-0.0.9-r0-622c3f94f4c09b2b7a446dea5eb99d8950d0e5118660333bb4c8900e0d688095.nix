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
    flags = { sample = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "prefork"; version = "0.0.9"; };
      license = "MIT";
      copyright = "(c) 2013 GREE, Inc.";
      maintainer = "kiyoshi.ikehara@gree.net";
      author = "Kiyoshi Ikehara, Benjamin Sruma";
      homepage = "";
      url = "";
      synopsis = "A library for building a prefork-style server quickly";
      description = "Prefork is a library for building a prefork-style server quickly.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."system-argv0" or (errorHandler.buildDepError "system-argv0"))
          (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "prefork-sample-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."prefork" or (errorHandler.buildDepError "prefork"))
            ];
          buildable = if flags.sample then true else false;
          };
        "prefork-sample-various-workers" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."prefork" or (errorHandler.buildDepError "prefork"))
            ];
          buildable = if flags.sample then true else false;
          };
        "prefork-sample-warp" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."prefork" or (errorHandler.buildDepError "prefork"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = if flags.sample then true else false;
          };
        };
      tests = {
        "test-prefork" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prefork" or (errorHandler.buildDepError "prefork"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."cab" or (errorHandler.buildDepError "cab"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "test-prefork-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."prefork" or (errorHandler.buildDepError "prefork"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "1.6";
      identifier = { name = "c10k"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://github.com/kazu-yamamoto/c10k";
      url = "";
      synopsis = "C10k server library using prefork";
      description = "Network server library to handle\nover 10,000 connections. Since GHC 6.12 or\nearlier uses select(), it cannot handle\nconnections over 1,024. This library uses\nthe prefork technique to get over the barrier.\nPrograms complied by GHC 6.10 or earlier\nwith the -threaded option kill the IO thread\nwhen forkProcess is used. So, don't specify\nthe -threaded option to use this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."hdaemonize" or (errorHandler.buildDepError "hdaemonize"))
        ];
        buildable = true;
      };
    };
  }
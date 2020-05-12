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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hinotify"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Kolmodin <kolmodin@gmail.com>";
      author = "Lennart Kolmodin";
      homepage = "http://code.haskell.org/hinotify/README.html";
      url = "";
      synopsis = "Haskell binding to INotify";
      description = "\nThis library provides a wrapper to the Linux Kernel's inotify feature,\nallowing applications to subscribe to notifications when a file is\naccessed or modified.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }
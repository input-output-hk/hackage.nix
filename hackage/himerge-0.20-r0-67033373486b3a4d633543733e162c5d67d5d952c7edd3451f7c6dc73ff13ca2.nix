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
      specVersion = "1.0";
      identifier = { name = "himerge"; version = "0.20"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "araujo@gentoo.org";
      author = "Luis Francisco Araujo";
      homepage = "http://www.haskell.org/himerge";
      url = "";
      synopsis = "Haskell Graphical User Interface for Emerge";
      description = "Himerge is a graphical user interface for emerge (Gentoo's Portage system)\nwritten in Haskell using gtk2hs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "himerge" = {
          depends = [
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."mozembed" or (errorHandler.buildDepError "mozembed"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            ];
          buildable = true;
          };
        };
      };
    }
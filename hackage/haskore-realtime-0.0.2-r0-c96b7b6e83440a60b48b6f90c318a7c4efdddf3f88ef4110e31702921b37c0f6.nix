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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "haskore-realtime"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Haskore/";
      url = "http://darcs.haskell.org/haskore-realtime/";
      synopsis = "Routines for realtime playback of Haskore songs";
      description = "This package contains support for realtime playback of Haskore songs.\nHowever this does not work satisfyingly\nand it introduces dependencies like on 'unix' package,\nthat reduce portability.\nThus we have removed this part from core Haskore.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskore" or (errorHandler.buildDepError "haskore"))
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }
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
    flags = { pedantic = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "haskell-updater"; version = "1.4.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(c) Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
      maintainer = "haskell@gentoo.org";
      author = "Ivan Lazar Miljenovic,\nLennart Kolmodin,\nStephan Friedrichs,\nEmil Karlson";
      homepage = "https://github.com/gentoo-haskell/haskell-updater#readme";
      url = "";
      synopsis = "Rebuild Haskell dependencies in Gentoo";
      description = "haskell-updater rebuilds Haskell packages on Gentoo\nafter a GHC upgrade or a dependency upgrade.\nhaskell-updater is written so as to use only\nGHC's boot libraries so as to have no external\ndependencies.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "haskell-updater" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.2.1") (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"));
          buildable = true;
        };
      };
    };
  }
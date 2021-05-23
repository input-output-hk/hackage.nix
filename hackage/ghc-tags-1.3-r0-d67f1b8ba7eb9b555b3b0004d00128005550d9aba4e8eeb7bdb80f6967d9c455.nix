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
    flags = { ghc-lib = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "ghc-tags"; version = "1.3"; };
      license = "MPL-2.0";
      copyright = "(c) 2021, Andrzej Rybczak";
      maintainer = "andrzej@rybczak.net";
      author = "Andrzej Rybczak";
      homepage = "https://github.com/arybczak/ghc-tags";
      url = "";
      synopsis = "Utility for generating ctags and etags with GHC API.";
      description = "Utility for generating etags (Emacs) and ctags (Vim and other\neditors) with GHC API for efficient project navigation.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-tags" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ] ++ (if !flags.ghc-lib && (compiler.isGhc && ((compiler.version).ge "9.0" && (compiler.version).lt "9.1"))
            then [
              (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
              (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
              ]
            else [
              (hsPkgs."ghc-lib" or (errorHandler.buildDepError "ghc-lib"))
              ]);
          buildable = true;
          };
        };
      };
    }
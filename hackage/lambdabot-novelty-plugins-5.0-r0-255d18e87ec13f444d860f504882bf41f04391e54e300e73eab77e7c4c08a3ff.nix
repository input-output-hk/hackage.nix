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
      specVersion = "1.8";
      identifier = { name = "lambdabot-novelty-plugins"; version = "5.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "http://haskell.org/haskellwiki/Lambdabot";
      url = "";
      synopsis = "Novelty plugins for Lambdabot";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[bf] Run Brainf*ck code.\n[dice] Roll some dice.\n[elite] zPEak Gib8erI$|-|.\n[filter] More gibberish.\n[numberwang] Sorry, that's not Numberwang.\n[quote] Parrot profound wisdom.\n[slap] Delegate punishment.\n[unlambda] Run Unlambda code.\n[vixen] Let's chat, honey.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dice" or (errorHandler.buildDepError "dice"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."lambdabot-core" or (errorHandler.buildDepError "lambdabot-core"))
          (hsPkgs."misfortune" or (errorHandler.buildDepError "misfortune"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."brainfuck" or (errorHandler.buildDepError "brainfuck"))
          (hsPkgs."unlambda" or (errorHandler.buildDepError "unlambda"))
        ];
        buildable = true;
      };
    };
  }
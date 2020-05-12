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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "lambdabot-misc-plugins"; version = "5.1.0.4"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "Don Stewart";
      homepage = "https://wiki.haskell.org/Lambdabot";
      url = "";
      synopsis = "Lambdabot miscellaneous plugins ";
      description = "Lambdabot is an IRC bot written over several years by\nthose on the #haskell IRC channel.\n\nProvided plugins:\n\n[dummy] Many commands with fixed replies.\n\n[error] Debug error handling.\n\n[fresh] Generate Haskell project names.\n\n[hello] Hello, world.\n\n[stats] Ad-hoc statsd queries.\n\n[todo] A to-do list for lambdabot.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hstatsd" or (errorHandler.buildDepError "hstatsd"))
          (hsPkgs."lambdabot-core" or (errorHandler.buildDepError "lambdabot-core"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."random-source" or (errorHandler.buildDepError "random-source"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ [
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }
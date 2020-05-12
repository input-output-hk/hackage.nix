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
      identifier = { name = "ircbot"; version = "0.6.5.2"; };
      license = "BSD-3-Clause";
      copyright = "2012 SeeReason Partners LLC";
      maintainer = "jeremy@seereason.com";
      author = "Jeremy Shaw, Eric Mertens";
      homepage = "https://github.com/stepcut/ircbot";
      url = "";
      synopsis = "A library for writing IRC bots";
      description = "A simple library for an IRC bot";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."irc" or (errorHandler.buildDepError "irc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."SafeSemaphore" or (errorHandler.buildDepError "SafeSemaphore"))
          ];
        buildable = true;
        };
      };
    }
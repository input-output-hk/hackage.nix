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
      specVersion = "1.2";
      identifier = { name = "hulk"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done ";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "IRC daemon.";
      description = "An IRC daemon with mandatory authentication.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hulk" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."irc" or (errorHandler.buildDepError "irc"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        "hulk-generate-pass" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."irc" or (errorHandler.buildDepError "irc"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."Crypto" or (errorHandler.buildDepError "Crypto"))
            ];
          buildable = true;
          };
        };
      };
    }
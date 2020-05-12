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
      specVersion = "1.10";
      identifier = { name = "jot"; version = "0.1.0.3"; };
      license = "ISC";
      copyright = "2018 Daniel Firth";
      maintainer = "locallycompact@gmail.com";
      author = "Daniel Firth";
      homepage = "http://gitlab.com/locallycompact/jot";
      url = "";
      synopsis = "Tiny markdown notebook";
      description = "Jot is a little notebook. It makes little notepages with timestamps that you can customize.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "jot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."docopt" or (errorHandler.buildDepError "docopt"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "pb"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Dominik Picheta";
      maintainer = "morfeusz8@gmail.com";
      author = "Dominik Picheta";
      homepage = "";
      url = "";
      synopsis = "pastebin command line application";
      description = "A simple pastebin command line application. Currently supports gist and pastebin.com.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }
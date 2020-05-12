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
      identifier = { name = "tellbot"; version = "0.4.0.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "IRC tellbot";
      description = "An IRC bot that can be used to create queuing message.\nIt also offers a simple administration IRC bot interface.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tellbot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "sensenet"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "rossdylan@csh.rit.edu";
      author = "Ross Delinger";
      homepage = "https://github.com/rossdylan/sensenet";
      url = "";
      synopsis = "Distributed sensor network for the raspberry pi";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sensenet" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."zeromq3-haskell" or (errorHandler.buildDepError "zeromq3-haskell"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }
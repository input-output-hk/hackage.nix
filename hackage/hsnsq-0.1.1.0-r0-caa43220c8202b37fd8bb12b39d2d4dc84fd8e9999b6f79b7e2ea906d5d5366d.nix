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
      identifier = { name = "hsnsq"; version = "0.1.1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "berens.paul@gmail.com";
      author = "Paul Berens";
      homepage = "https://github.com/gamelost/hsnsq";
      url = "";
      synopsis = "Haskell NSQ client.";
      description = "Currently a primitive NSQ client, it implements the very basics of an NSQ client for communicating with single NSQ servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          (hsPkgs."pipes-network" or (errorHandler.buildDepError "pipes-network"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
          ];
        buildable = true;
        };
      exes = {
        "nsq-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-binary" or (errorHandler.buildDepError "attoparsec-binary"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
            (hsPkgs."pipes-network" or (errorHandler.buildDepError "pipes-network"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
            (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
            ];
          buildable = true;
          };
        };
      };
    }
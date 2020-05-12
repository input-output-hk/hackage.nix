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
      identifier = { name = "cassandra-cql"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Stephen Blackheath 2013-2015";
      maintainer = "http://blacksapphire.com/antispam/";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Haskell client for Cassandra's CQL protocol";
      description = "Haskell client for Cassandra's CQL protocol\n\nReivision history:\n\n* 0.5.0.0 Upgrade to CQL Binary Protocol v2. Support Cassandra Lightweight transactions.\n* 0.4.0.1 Add PasswordAuthenticator (thanks Curtis Carter) & accept ghc-7.8\n* 0.3.0.1 Fix socket issue on Mac.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."MonadCatchIO-transformers" or (errorHandler.buildDepError "MonadCatchIO-transformers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."Decimal" or (errorHandler.buildDepError "Decimal"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
        buildable = true;
        };
      };
    }
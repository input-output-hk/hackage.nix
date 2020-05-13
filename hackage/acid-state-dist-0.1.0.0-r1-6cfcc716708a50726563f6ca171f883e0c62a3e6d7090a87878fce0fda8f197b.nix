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
    flags = { debug = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "acid-state-dist"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "<max.voit+hdv@with-eyes.net>";
      author = "Max Voit";
      homepage = "";
      url = "";
      synopsis = "Replication backend for acid-state";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."zeromq4-haskell" or (errorHandler.buildDepError "zeromq4-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "Simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "SlaveUpdates" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "CRCFail" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "CheckpointSync" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "OrderingRandom" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "NReplication" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "UpdateError" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "SyncTimeout" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "Local" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            ];
          buildable = true;
          };
        "MasterOnly" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "MasterSlave" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        "Slave" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."acid-state-dist" or (errorHandler.buildDepError "acid-state-dist"))
            ];
          buildable = true;
          };
        };
      };
    }
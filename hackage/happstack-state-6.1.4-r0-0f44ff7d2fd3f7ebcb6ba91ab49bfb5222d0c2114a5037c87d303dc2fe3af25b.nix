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
    flags = { base4 = true; tests = false; replication = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-state"; version = "6.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Event-based distributed state.";
      description = "Unplug your machine and restart and have your app recover to exactly where it left off. Happstack-State spares you the need to deal with all the marshalling, consistency, and configuration headache that you would have if you used an external DBMS for this purpose. Its component model makes it easy to compose big applications from smaller reliable parts. Use event subscription to trigger IO actions and support comet-style or irc-bot applications. ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."happstack-util" or (errorHandler.buildDepError "happstack-util"))
          (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ pkgs.lib.optionals (flags.tests) [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ]) ++ pkgs.lib.optionals (flags.replication) [
          (hsPkgs."hS3" or (errorHandler.buildDepError "hS3"))
          (hsPkgs."bencode" or (errorHandler.buildDepError "bencode"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
        ]) ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
      };
      exes = {
        "happstack-state-tests" = {
          depends = pkgs.lib.optional (flags.tests) (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"));
          buildable = if flags.tests then true else false;
        };
      };
    };
  }
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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "haskore-supercollider"; version = "0.1.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/SuperCollider";
      url = "";
      synopsis = "Haskore back-end for SuperCollider";
      description = "This package lets you play Haskore music via Supercollider\nusing the packages @hosc@ and @hsc3@.\nThe functions manage NodeIds and SuperCollider buffers for you.\nWe support realtime replay and rendering to disk.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskore-realtime" or (errorHandler.buildDepError "haskore-realtime"))
          (hsPkgs."haskore" or (errorHandler.buildDepError "haskore"))
          (hsPkgs."hosc" or (errorHandler.buildDepError "hosc"))
          (hsPkgs."hsc3" or (errorHandler.buildDepError "hsc3"))
          (hsPkgs."opensoundcontrol-ht" or (errorHandler.buildDepError "opensoundcontrol-ht"))
          (hsPkgs."supercollider-ht" or (errorHandler.buildDepError "supercollider-ht"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."non-negative" or (errorHandler.buildDepError "non-negative"))
          (hsPkgs."event-list" or (errorHandler.buildDepError "event-list"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "song-air" = { buildable = true; };
        "test" = {
          depends = (pkgs.lib).optionals (flags.buildtests) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = false;
          };
        };
      };
    }
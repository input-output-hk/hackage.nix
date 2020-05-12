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
    flags = { buildexe = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "plex"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "2018 phlummox";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/hs-plex#readme";
      url = "";
      synopsis = "run a subprocess, combining stdout and stderr";
      description = "Execute a command, redirect stderr into stdout, and return\nthe combined result (optionally, with a timeout).\nIrritatingly difficult to do using the \"process\" library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      exes = {
        "try-plex" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ] ++ (pkgs.lib).optionals (flags.buildexe) [
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plex" or (errorHandler.buildDepError "plex"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = if flags.buildexe then true else false;
          };
        };
      tests = {
        "plex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."plex" or (errorHandler.buildDepError "plex"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }
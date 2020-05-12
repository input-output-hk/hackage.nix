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
      specVersion = "1.18";
      identifier = { name = "quoridor-hs"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tal Walter <talw10@gmail.com>";
      author = "Tal Walter <talw10@gmail.com>";
      homepage = "https://github.com/talw/quoridor-hs";
      url = "";
      synopsis = "A Quoridor implementation in Haskell";
      description = "An implementation in Haskell of the 2-to-4-player strategy game.\nFor more information, see:\n<https://github.com/talw/quoridor-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."hex" or (errorHandler.buildDepError "hex"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."websockets-snap" or (errorHandler.buildDepError "websockets-snap"))
          (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      exes = {
        "quoridor-exec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quoridor-hs" or (errorHandler.buildDepError "quoridor-hs"))
            ];
          buildable = true;
          };
        };
      tests = {
        "quoridor-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."quoridor-hs" or (errorHandler.buildDepError "quoridor-hs"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }
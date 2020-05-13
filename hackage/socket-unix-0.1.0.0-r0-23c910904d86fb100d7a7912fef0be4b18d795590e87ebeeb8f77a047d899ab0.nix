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
      identifier = { name = "socket-unix"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Vyacheslav Hashov";
      maintainer = "vyacheslavhashov@gmail.com";
      author = "Vyacheslav Hashov";
      homepage = "https://github.com/vyacheslavhashov/haskell-socket-unix#readme";
      url = "";
      synopsis = "A Unix domain sockets";
      description = "A Unix domain socket extension for the socket library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "default" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."socket-unix" or (errorHandler.buildDepError "socket-unix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        "threaded" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."socket" or (errorHandler.buildDepError "socket"))
            (hsPkgs."socket-unix" or (errorHandler.buildDepError "socket-unix"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          buildable = true;
          };
        };
      };
    }
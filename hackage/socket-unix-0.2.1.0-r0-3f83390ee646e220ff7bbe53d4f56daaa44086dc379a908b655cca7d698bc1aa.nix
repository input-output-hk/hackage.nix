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
      specVersion = "2.2";
      identifier = { name = "socket-unix"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "2017 Vyacheslav Hashov";
      maintainer = "flip101@gmail.com, vyacheslavhashov@gmail.com";
      author = "flip111, Vyacheslav Hashov";
      homepage = "https://github.com/flip111/haskell-socket-unix#readme";
      url = "";
      synopsis = "Unix domain sockets";
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
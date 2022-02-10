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
      identifier = { name = "kafka-device-glut"; version = "1.0.2.1"; };
      license = "MIT";
      copyright = "(c) 2016-19 Brian W Bush";
      maintainer = "Brian W Bush <code@functionally.io>";
      author = "Brian W Bush <code@functionally.io>";
      homepage = "https://bitbucket.org/functionally/kafka-device-glut";
      url = "https://bitbucket.org/functionally/kafka-device-glut/downloads/kafka-device-glut-$version.tar.gz";
      synopsis = "GLUT events via a Kafka message broker";
      description = "This package contains functions for passing GLUT events to topics on a Kafka message broker \\<<https://kafka.apache.org/>\\>.  Also see \\<<https://hackage.haskell.org/package/kafka-device/>\\>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."kafka-device" or (errorHandler.buildDepError "kafka-device"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      exes = {
        "kafka-device-glut" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."kafka-device" or (errorHandler.buildDepError "kafka-device"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            ];
          buildable = true;
          };
        };
      };
    }
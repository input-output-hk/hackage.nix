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
      specVersion = "1.2";
      identifier = { name = "hp2any-graph"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Patai Gergely";
      maintainer = "Patai Gergely (patai@iit.bme.hu)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "Real-time heap graphing utility and profile stream server with a reusable graphing module.";
      description = "This package contains two utilities: a grapher that can display heap\nprofiles in real time both for local and remote processes, and a\nrelay application the grapher connects to in the latter case.\nAdditionally, the graphing capability is exposed to other programs\nas well in the form of a library module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hp2any-core" or (errorHandler.buildDepError "hp2any-core"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
        ];
        buildable = true;
      };
      exes = {
        "hp2any-graph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hp2any-core" or (errorHandler.buildDepError "hp2any-core"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          ];
          libs = [ (pkgs."glut" or (errorHandler.sysDepError "glut")) ];
          buildable = true;
        };
        "hp2any-relay" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hp2any-core" or (errorHandler.buildDepError "hp2any-core"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = true;
        };
      };
    };
  }
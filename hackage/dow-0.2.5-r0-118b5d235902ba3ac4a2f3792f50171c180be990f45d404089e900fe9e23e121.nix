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
      identifier = { name = "dow"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2011, Patai Gergely";
      maintainer = "Patai Gergely (patai.gergely@gmail.com)";
      author = "Patai Gergely";
      homepage = "";
      url = "";
      synopsis = "Dungeons of Wor";
      description = "Dungeons of Wor is a homage to the classic arcade game, Wizard of\nWor.  It uses the artwork and levels from the Astrocade version, but\nthe gameplay mechanics differ from the original in several ways.\n\nThis game is also an experiment in functional reactive programming,\nso it might be a useful resource to anyone interested in this topic.\nIt was coded using the simple version of Elerea, which provides\ndiscrete streams as first-class values.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dow" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."elerea" or (errorHandler.buildDepError "elerea"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mersenne-random" or (errorHandler.buildDepError "mersenne-random"))
          ];
          buildable = true;
        };
      };
    };
  }
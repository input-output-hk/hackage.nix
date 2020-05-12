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
      identifier = { name = "liveplot"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "";
      url = "";
      synopsis = "Liveplotting";
      description = "Live plotting with OpenGL. This Haskell library allows feeding live data via Pipes to OpenGL plots.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."andromeda" or (errorHandler.buildDepError "andromeda"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."GLUtil" or (errorHandler.buildDepError "GLUtil"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."mvc" or (errorHandler.buildDepError "mvc"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-misc" or (errorHandler.buildDepError "pipes-misc"))
          (hsPkgs."pipes-extras" or (errorHandler.buildDepError "pipes-extras"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."vinyl-gl" or (errorHandler.buildDepError "vinyl-gl"))
          ];
        buildable = true;
        };
      exes = {
        "liveplot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mvc" or (errorHandler.buildDepError "mvc"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."liveplot" or (errorHandler.buildDepError "liveplot"))
            ];
          buildable = true;
          };
        "liveplot-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."liveplot" or (errorHandler.buildDepError "liveplot"))
            ];
          buildable = true;
          };
        };
      };
    }
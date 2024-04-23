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
      specVersion = "1.6";
      identifier = { name = "click-clack"; version = "1.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2012 Anton Kholomiov";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "Toy game (tetris on billiard board). Hipmunk in action.";
      description = "Control red ball with mouse clicks. Avoid blue balls (minus one live) and\ngo for green balls (plus one live) and orange balls (bonus).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "click-clack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."Hipmunk" or (errorHandler.buildDepError "Hipmunk"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."StateVar" or (errorHandler.buildDepError "StateVar"))
            (hsPkgs."GLFW" or (errorHandler.buildDepError "GLFW"))
          ];
          buildable = true;
        };
      };
    };
  }
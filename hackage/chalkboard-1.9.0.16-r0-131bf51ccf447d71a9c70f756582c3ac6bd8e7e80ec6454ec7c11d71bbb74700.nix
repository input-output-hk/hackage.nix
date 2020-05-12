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
    flags = {
      all = false;
      server = true;
      test1 = false;
      chalkmark = false;
      simple = false;
      cbbe1 = false;
      example = false;
      tutorial = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "chalkboard"; version = "1.9.0.16"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill, Kevin Matlage";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/ChalkBoard";
      url = "";
      synopsis = "Combinators for building and processing 2D images. ";
      description = "ChalkBoard is a Haskell hosted Domain Specific Language (DSL) for image generation and processing.\nThe basic structure is a Chalk Board, a two-dimensional canvas of values, typically colors.\nChalkBoard provides the usual image processing functions (masking, overlaying, function mapping,\ncropping, warping, rotating) as well as a few more unusual ones.\nImages can be imported into ChalkBoard, as first-class color chalk boards.\nChalkBoard also provides combinators for drawing shapes on directly on boards.\nThe system is based loosely on Pan, but the principal image type, a Board, is abstract.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
          (hsPkgs."Codec-Image-DevIL" or (errorHandler.buildDepError "Codec-Image-DevIL"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "chalkboard-server-1_9_0_16" = {
          buildable = if flags.server then true else false;
          };
        "chalkboard-tests-test1" = {
          buildable = if flags.all || flags.test1 then true else false;
          };
        "chalkboard-tests-chalkmark" = {
          buildable = if flags.all || flags.chalkmark then true else false;
          };
        "chalkboard-tests-simple" = {
          depends = (pkgs.lib).optional (!(flags.all || flags.simple)) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          buildable = if flags.all || flags.simple then true else false;
          };
        "chalkboard-tests-cbbe1" = {
          buildable = if flags.all || flags.cbbe1 then true else false;
          };
        "chalkboard-examples-example" = {
          buildable = if flags.all || flags.example then true else false;
          };
        "chalkboard-tutorial-basic" = {
          buildable = if flags.all || flags.tutorial then true else false;
          };
        };
      };
    }
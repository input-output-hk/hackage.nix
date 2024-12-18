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
      specVersion = "2.0";
      identifier = { name = "worldturtle"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Archibald Neil MacDonald";
      maintainer = "FortOyer@hotmail.co.uk";
      author = "Archibald Neil MacDonald";
      homepage = "https://github.com/FortOyer/worldturtle-haskell#readme";
      url = "";
      synopsis = "Turtle graphics.";
      description = "Have you ever heard of [Turtle Graphics](https://en.wikipedia.org/wiki/Turtle_graphics)?\n\nIf not, then think of a @turtle@ as a cursor you can program to draw!\n\nTurtle graphics are a fantastic introduction to the world of\nprogramming and to the syntax of a new programming language.\n\n![parallelcircles gif](https://hackage.haskell.org/package/worldturtle-0.2.0.0/docs/docs/images/parallel_circles_animated_300.gif)\n\nThis module is a framework built on top\nof [gloss](https://hackage.haskell.org/package/gloss) to render turtles\nprogrammed in Haskell as animations. This is primarily aimed as a\nteaching tool to beginners - but also, it's cool to draw things!\n\nSee The API ref, \"Graphics.WorldTurtle\", for features!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }
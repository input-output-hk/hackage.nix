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
      identifier = { name = "data-spacepart"; version = "20090126.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor <coreyoconnor@gmail.com>";
      author = "Corey O'Connor <coreyoconnor@gmail.com>";
      homepage = "http://www.tothepowerofdisco.com/repo/data-spacepart/";
      url = "http://www.tothepowerofdisco.com/repo/data-spacepart/";
      synopsis = "Space partition data structures. Currently only a QuadTree.";
      description = "Space partition data structures. Currently only a QuadTree.\n\ndarcs get --partial http://www.tothepowerofdisco.com/repo/data-spacepart/\n\nTODO:\n\nlots.\n\nMove test/QuadTreeVisualize to a separate package.\n\nThe only example is test/QuadTreeVisualize. This can be run with:\n\nchmod u+x test/run_test\n\ncd test && ./run_test\n\nThis isn't actually a \"test\". QuadTreeVisualize renders a random quadtree in\na heavily stylized fashion using OpenGL. Arrows to move about. Shift-Up/Down\nto zoom in and out. This requires a non-standard branch of the OpenGL\nlibraries from here:\n\nhttp:\\/\\/www.tothepowerofdisco.com\\/repo\\/OpenGL\\/\n\nDue to the framebuffer object requirement of the test/Render module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          (hsPkgs."mersenne-random" or (errorHandler.buildDepError "mersenne-random"))
          ];
        buildable = true;
        };
      };
    }
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
      identifier = { name = "propane"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Functional synthesis of images and animations";
      description = "Propane is a system for synthesizing images and animations, in the spirit\nof Pan (<http://conal.net/Pan/>) and many other projects.  The core idea is\nthat an image is a function assigning a colour to each point in the plane.\nSimilarly, an animation assigns an image to each point in time.  Haskell's\ntools for functional and declarative programming can be used directly on\nimages and animations.\n\nSeveral examples are provided, in the @examples/@ directory.\n\nPropane uses the Repa array library.  This means that Propane automatically\nuses multiple CPU cores for rendering, provided the program is compiled and\nrun with threads enabled.  That said, the implementation has not yet been\noptimized for speed.\n\nPropane is a modest toy right now, but there are vague plans to make it\ndo fancy things.  Please contact the author with suggestions or code!";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."repa-devil" or (errorHandler.buildDepError "repa-devil"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."spawn" or (errorHandler.buildDepError "spawn"))
        ];
        buildable = true;
      };
    };
  }
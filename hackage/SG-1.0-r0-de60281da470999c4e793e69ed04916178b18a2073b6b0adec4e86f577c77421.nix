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
      identifier = { name = "SG"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Neil Brown";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "";
      url = "";
      synopsis = "Small geometry library for dealing with vectors and collision detection";
      description = "A small geometry library for dealing with\nvectors, points, lines, simple shapes, and their\nvarious intersection tests.  See also the SGdemo project\n(<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/SGdemo>)\nfor an example of using the module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }
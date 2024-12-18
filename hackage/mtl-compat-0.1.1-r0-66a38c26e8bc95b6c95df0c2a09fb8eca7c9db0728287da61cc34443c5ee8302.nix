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
    flags = { two-point-one = false; two-point-two = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mtl-compat"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@ku.edu>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/mtl-compat";
      url = "";
      synopsis = "Orphan mtl instances for ExceptT from transformers-compat";
      description = "This package backports the \"Control.Monad.Except\" module (if\nusing @mtl-2.2.0.1@ or earlier) and monad class instances for\n@ExceptT@ from @transformers-compat@ (if using @mtl-2.1.3.1@\nor earlier).\n\nNote that unlike how @mtl-2.2@ or later works, the\n\"Control.Monad.Except\" module defined in this package exports\nall of @ExceptT@'s monad class instances. Therefore, you may\nhave to declare @import Control.Monad.Except ()@ at the top of\nyour file to get all of the @ExceptT@ instances in scope.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ (if flags.two-point-one
          then [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          ]
          else if flags.two-point-two
            then [
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]
            else [ (hsPkgs."mtl" or (errorHandler.buildDepError "mtl")) ]);
        buildable = true;
      };
    };
  }
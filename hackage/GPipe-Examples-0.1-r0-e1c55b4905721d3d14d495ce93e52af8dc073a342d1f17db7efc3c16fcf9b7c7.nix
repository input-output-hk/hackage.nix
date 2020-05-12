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
      identifier = { name = "GPipe-Examples"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2010 Kree Cole-McLaughlin";
      maintainer = "kree.colemclaughlin@gmail.com";
      author = "Kree Cole-McLaughlin";
      homepage = "";
      url = "";
      synopsis = "Examples for the GPipes package";
      description = "A set of examples with increasing complexity";
      buildType = "Simple";
      };
    components = {
      exes = {
        "01_green_triangle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            (hsPkgs."Vec-Transform" or (errorHandler.buildDepError "Vec-Transform"))
            (hsPkgs."GPipe" or (errorHandler.buildDepError "GPipe"))
            (hsPkgs."GPipe-TextureLoad" or (errorHandler.buildDepError "GPipe-TextureLoad"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            ];
          buildable = true;
          };
        "02_triangle_texture" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            (hsPkgs."Vec-Transform" or (errorHandler.buildDepError "Vec-Transform"))
            (hsPkgs."GPipe" or (errorHandler.buildDepError "GPipe"))
            (hsPkgs."GPipe-TextureLoad" or (errorHandler.buildDepError "GPipe-TextureLoad"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            ];
          buildable = true;
          };
        "03_green_sphere" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            (hsPkgs."Vec-Transform" or (errorHandler.buildDepError "Vec-Transform"))
            (hsPkgs."GPipe" or (errorHandler.buildDepError "GPipe"))
            (hsPkgs."GPipe-TextureLoad" or (errorHandler.buildDepError "GPipe-TextureLoad"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            ];
          buildable = true;
          };
        "04_brass_sphere" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            (hsPkgs."Vec-Transform" or (errorHandler.buildDepError "Vec-Transform"))
            (hsPkgs."GPipe" or (errorHandler.buildDepError "GPipe"))
            (hsPkgs."GPipe-TextureLoad" or (errorHandler.buildDepError "GPipe-TextureLoad"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            ];
          buildable = true;
          };
        };
      };
    }
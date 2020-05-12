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
      specVersion = "1.2.3";
      identifier = { name = "GPipe-Collada"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "http://www.haskell.org/haskellwiki/GPipe";
      url = "http://hackage.haskell.org/package/GPipe-Collada";
      synopsis = "Load GPipe meshes from Collada files";
      description = "This package provides data types for a Collada scene graph including geometries, cameras and lights that may be loaded from\nCollada (dae) files. Geometries are represented by GPipe PrimitiveStreams. A utility module is included that include traverse helpers\nand render functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GPipe" or (errorHandler.buildDepError "GPipe"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
          (hsPkgs."Vec-Transform" or (errorHandler.buildDepError "Vec-Transform"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }
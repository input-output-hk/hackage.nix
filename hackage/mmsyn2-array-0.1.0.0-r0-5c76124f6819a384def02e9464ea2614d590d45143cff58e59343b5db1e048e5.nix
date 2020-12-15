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
      identifier = { name = "mmsyn2-array"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/mmsyn2-array";
      url = "";
      synopsis = "A library with less dependencies that can be used for multiple @Ord a => a -> b@ transformations.";
      description = "A library that can be used as a @case ... of@ constuction analogue for the multiple @Ord a => a -> b@ transformations and data representation. Uses \"GHC.Arr\" internally. If you use the module in GHCi, then, please, run the interpreter with the flag -fobject-code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
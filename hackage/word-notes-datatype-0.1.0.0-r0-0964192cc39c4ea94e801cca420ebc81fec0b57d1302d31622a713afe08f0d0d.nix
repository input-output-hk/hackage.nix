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
      specVersion = "3.0";
      identifier = { name = "word-notes-datatype"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "https://hackage.haskell.org/package/word-notes-datatype";
      url = "";
      synopsis = "General datatypes for music creation for one instrument";
      description = "Inspired by the video by the link: <https://www.youtube.com/watch?v=rhgt3lZ1RUU>. A continuation of the work on @algorithmic-composition-basic@ and @dobutokO2@ series of packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }
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
      specVersion = "1.24";
      identifier = { name = "rhythmic-sequences"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "(c) Oleksandr S. Zhabenko 2022-2023";
      maintainer = "oleksandr.zhabenko@yahoo.com";
      author = "Oleksandr Zhabenko";
      homepage = "";
      url = "";
      synopsis = "Improved library to deal with rhythmicity of short sequences";
      description = "The improved library that deals with the model similar to the one given at the work https://oleksandrzhabenko.github.io/uk/rhythmicity/PhLADiPreLiO.Eng.21.pdf and https://hackage.haskell.org/package/phonetic-languages-simplified-examples-array";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }
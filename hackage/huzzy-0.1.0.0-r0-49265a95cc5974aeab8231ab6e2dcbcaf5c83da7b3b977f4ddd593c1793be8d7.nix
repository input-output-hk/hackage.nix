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
      identifier = { name = "huzzy"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "joe@jna.sh";
      author = "Joe Nash";
      homepage = "";
      url = "";
      synopsis = "Fuzzy logic library with support for Type-1, Interval type-2 and zSlices enabled type-2 fuzzy sets and systems.";
      description = "Library for creating fuzzy sets and systems.\nThere are known issues with overly precise values in Type-2 sets.\nIncredibly alpha, please do not use this for controlling your shower.\nHuge thanks to Emilio Gallego for his work on ffuzz: http://www.cis.upenn.edu/~emilioga/software/ffuzz/.\nHeavily inspired by http://journals.cambridge.org/action/displayAbstract?fromPage=online&aid=44203";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."easyplot" or (errorHandler.buildDepError "easyplot"))
          ];
        buildable = true;
        };
      };
    }
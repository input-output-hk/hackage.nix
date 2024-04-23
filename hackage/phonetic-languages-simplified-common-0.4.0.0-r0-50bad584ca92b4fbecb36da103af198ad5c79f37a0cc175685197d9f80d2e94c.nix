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
      identifier = {
        name = "phonetic-languages-simplified-common";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-simlified-common";
      url = "";
      synopsis = "A simplified version of the phonetic-languages-functionality";
      description = "A simplified version of the phonetic-languages-functionality. Tries to use only necessary functionality and reduce the other one.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."subG" or (errorHandler.buildDepError "subG"))
          (hsPkgs."subG-instances" or (errorHandler.buildDepError "subG-instances"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."phonetic-languages-permutations" or (errorHandler.buildDepError "phonetic-languages-permutations"))
        ];
        buildable = true;
      };
    };
  }
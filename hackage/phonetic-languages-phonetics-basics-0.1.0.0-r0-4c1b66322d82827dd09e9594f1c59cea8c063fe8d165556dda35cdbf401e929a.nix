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
        name = "phonetic-languages-phonetics-basics";
        version = "0.1.0.0";
        };
      license = "MIT";
      copyright = "Oleksandr Zhabenko";
      maintainer = "olexandr543@yahoo.com";
      author = "OleksandrZhabenko";
      homepage = "https://hackage.haskell.org/package/phonetic-languages-phonetics-basics";
      url = "";
      synopsis = "A library for working with generalized phonetic languages usage.";
      description = "There already exists a Ukrainian implementation for the phonetic languages approach published at: https://hackage.haskell.org/package/phonetic-languages-simplified-examples-array. It is optimized for the Ukrainian only and needs to be rewritten for every new language mostly from scratch using it as a template. To avoid this boilerplate, this one is provided. It can be used for different languages and even for music or other fields. ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }
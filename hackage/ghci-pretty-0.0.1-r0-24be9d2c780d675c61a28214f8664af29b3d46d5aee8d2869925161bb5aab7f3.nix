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
      specVersion = "1.12";
      identifier = { name = "ghci-pretty"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Lars Kuhtz <lakuhtz@gmail.com>";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz";
      homepage = "https://github.com/larskuhtz/ghci-pretty";
      url = "";
      synopsis = "colored pretty-printing within ghci";
      description = "a tiny package that combines the ipprint package and\nthe hscolour package to provide colored pretty-printing\nin ghci";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ipprint" or (errorHandler.buildDepError "ipprint"))
          (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"))
        ];
        buildable = true;
      };
    };
  }
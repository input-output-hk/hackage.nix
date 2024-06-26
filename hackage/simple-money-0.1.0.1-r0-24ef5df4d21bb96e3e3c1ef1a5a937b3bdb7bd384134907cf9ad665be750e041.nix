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
      identifier = { name = "simple-money"; version = "0.1.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "nbrk@linklevel.net";
      author = "Nikolay Burkov";
      homepage = "https://github.com/nbrk/simple-money";
      url = "";
      synopsis = "Simple library to handle and interexchange money";
      description = "A simple library for handling and interexchange\nmoney using user-provided exchange rates\ndictionaries. The library also exports some basic\narithmetics on money.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }
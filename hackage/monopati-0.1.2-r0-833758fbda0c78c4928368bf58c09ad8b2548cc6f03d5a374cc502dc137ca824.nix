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
      identifier = { name = "monopati"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/monopati";
      url = "";
      synopsis = "Well-typed paths";
      description = "Despite the fact that there are a plenty of various well-typed \"path\" libraries in Haskell, I decided to write new one that I would like to use.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }
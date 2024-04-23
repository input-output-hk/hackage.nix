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
      identifier = { name = "Hydrogen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "iqsf@ya.ru";
      author = "Pavel";
      homepage = "https://github.com/iqsf/Hydrogen.git";
      url = "";
      synopsis = "The library for generating a WebGL scene for the web";
      description = "The library for generating a WebGL scene for the web for the Haskell programming language.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."HFitUI" or (errorHandler.buildDepError "HFitUI"))
        ];
        buildable = true;
      };
      exes = {
        "Hydrogen-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hydrogen" or (errorHandler.buildDepError "Hydrogen"))
          ];
          buildable = true;
        };
      };
      tests = {
        "Hydrogen-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Hydrogen" or (errorHandler.buildDepError "Hydrogen"))
          ];
          buildable = true;
        };
      };
    };
  }
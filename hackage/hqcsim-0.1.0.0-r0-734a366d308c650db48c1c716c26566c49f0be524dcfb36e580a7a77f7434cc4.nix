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
      specVersion = "2.4";
      identifier = { name = "hqcsim"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Sebastian Mihai Ardelean";
      maintainer = "ardeleanasm@gmail.com";
      author = "Sebastian Mihai Ardelean";
      homepage = "https://github.com/sebastianardelean/hqcsim#readme";
      url = "";
      synopsis = "A library for simulating quantum circuits.";
      description = "A library used for simulating quantum circuits, based on the \"A tutorial quantum interpreter in 150 lines of Lisp\" from https://www.stylewarning.com/posts/quantum-interpreter/";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
        ];
        buildable = true;
      };
      exes = {
        "hqcsim-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."hqcsim" or (errorHandler.buildDepError "hqcsim"))
          ];
          buildable = true;
        };
      };
    };
  }
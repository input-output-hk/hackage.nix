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
      identifier = { name = "RSolve"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 thautwarm";
      maintainer = "twshere@outlook.com";
      author = "thautwarm";
      homepage = "https://github.com/thautwarm/Rsolver#readme";
      url = "";
      synopsis = "A general solver for equations";
      description = "A general solver for type checkers of programming languages\nand real world puzzles with complex constraints.";
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
      exes = {
        "RSolveExample" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."RSolve" or (errorHandler.buildDepError "RSolve"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }
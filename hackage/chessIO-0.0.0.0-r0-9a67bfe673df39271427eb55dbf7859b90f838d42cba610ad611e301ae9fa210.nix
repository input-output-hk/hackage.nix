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
      identifier = { name = "chessIO"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/chessIO#readme";
      url = "";
      synopsis = "";
      description = "A simple chess move generation library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "perft" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."chessIO" or (errorHandler.buildDepError "chessIO"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }
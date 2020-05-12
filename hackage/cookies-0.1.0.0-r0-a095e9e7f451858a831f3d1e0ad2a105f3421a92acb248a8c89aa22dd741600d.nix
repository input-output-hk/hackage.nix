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
      identifier = { name = "cookies"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Kyle McKean, chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "Kyle McKean, chessai";
      homepage = "https://github.com/chessai/cookies.git";
      url = "";
      synopsis = "web cookies";
      description = "simple web cookies ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."chronos" or (errorHandler.buildDepError "chronos"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }
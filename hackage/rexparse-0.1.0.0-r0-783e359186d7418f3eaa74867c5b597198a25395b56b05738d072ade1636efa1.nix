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
      specVersion = "3.0";
      identifier = { name = "rexparse"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eraveline@gmail.com";
      author = "Raveline";
      homepage = "https://github.com/Raveline/Rexparse";
      url = "";
      synopsis = "A library to handle rexpaint file format";
      description = "A library to read and write RexPaint (.xp) files: the gzip-compressed\nbinary format used by the RexPaint ASCII-art editor\n(<https://www.gridsagegames.com/rexpaint/>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      exes = {
        "rexparse-xp2png" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."rexparse" or (errorHandler.buildDepError "rexparse"))
          ];
          buildable = true;
        };
      };
      tests = {
        "rexparse-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rexparse" or (errorHandler.buildDepError "rexparse"))
          ];
          buildable = true;
        };
      };
    };
  }
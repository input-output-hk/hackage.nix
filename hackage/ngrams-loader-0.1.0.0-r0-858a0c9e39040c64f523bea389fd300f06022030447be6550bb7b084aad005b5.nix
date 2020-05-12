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
      identifier = { name = "ngrams-loader"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2014 Yorick Laupa";
      maintainer = "Yorick Laupa <yo.eight@gmail.com>";
      author = "Yorick Laupa";
      homepage = "http://github.com/YoEight/ngrams-loader";
      url = "";
      synopsis = "Ngrams loader based on http://www.ngrams.info format";
      description = "Ngrams loader based on http://www.ngrams.info format";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "ngrams-loader" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ngrams-loader" or (errorHandler.buildDepError "ngrams-loader"))
            (hsPkgs."parseargs" or (errorHandler.buildDepError "parseargs"))
            ];
          buildable = true;
          };
        };
      };
    }
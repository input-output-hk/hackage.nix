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
      identifier = { name = "folgerhs"; version = "0.3.0.1"; };
      license = "GPL-3.0-only";
      copyright = "2017 Uma Zalakain";
      maintainer = "uma@gisa-elkartea.org";
      author = "Uma Zalakain";
      homepage = "https://github.com/SU-LOSP/folgerhs#readme";
      url = "";
      synopsis = "Toolset for Folger Shakespeare Library's XML annotated plays";
      description = "Toolset for Folger Shakespeare Library's XML annotated plays";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
        ];
        buildable = true;
      };
      exes = {
        "folgerhs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."folgerhs" or (errorHandler.buildDepError "folgerhs"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."gloss" or (errorHandler.buildDepError "gloss"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
    };
  }
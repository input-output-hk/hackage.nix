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
      identifier = { name = "folgerhs"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Unai Zalakain";
      maintainer = "unai@gisa-elkartea.org";
      author = "Unai Zalakain";
      homepage = "https://github.com/SU-LOSP/tools#readme";
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
        ];
        buildable = true;
      };
      exes = {
        "folger-stage" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."folgerhs" or (errorHandler.buildDepError "folgerhs"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      specVersion = "2.2";
      identifier = { name = "polysemy-scoped-fs"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "2022 Hisaket VioletRed";
      maintainer = "hisaket@outlook.jp";
      author = "Hisaket VioletRed";
      homepage = "https://gitlab.com/hisaket/polysemy-scoped-fs";
      url = "";
      synopsis = "Well-typed filesystem operation effects.";
      description = "Please see the README on GitLab at <https://gitlab.com/hisaket/polysemy-scoped-fs/-/blob/master/README.adoc>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
          (hsPkgs."polysemy-fs" or (errorHandler.buildDepError "polysemy-fs"))
          (hsPkgs."polysemy-path" or (errorHandler.buildDepError "polysemy-path"))
          (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "polysemy-scoped-fs-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-fs" or (errorHandler.buildDepError "polysemy-fs"))
            (hsPkgs."polysemy-path" or (errorHandler.buildDepError "polysemy-path"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-scoped-fs" or (errorHandler.buildDepError "polysemy-scoped-fs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "polysemy-scoped-fs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."polysemy" or (errorHandler.buildDepError "polysemy"))
            (hsPkgs."polysemy-fs" or (errorHandler.buildDepError "polysemy-fs"))
            (hsPkgs."polysemy-path" or (errorHandler.buildDepError "polysemy-path"))
            (hsPkgs."polysemy-plugin" or (errorHandler.buildDepError "polysemy-plugin"))
            (hsPkgs."polysemy-scoped-fs" or (errorHandler.buildDepError "polysemy-scoped-fs"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      specVersion = "1.24";
      identifier = { name = "CSPM-cspm"; version = "0.8.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      author = "Marc Fontaine <Marc.Fontaine@gmx.de>";
      homepage = "";
      url = "";
      synopsis = "cspm command line tool for analyzing CSPM specifications.";
      description = "cspm is a small command line tool for analyzing CSPM specifications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."CSPM-Frontend" or (errorHandler.buildDepError "CSPM-Frontend"))
          (hsPkgs."CSPM-CoreLanguage" or (errorHandler.buildDepError "CSPM-CoreLanguage"))
          (hsPkgs."CSPM-FiringRules" or (errorHandler.buildDepError "CSPM-FiringRules"))
          (hsPkgs."CSPM-Interpreter" or (errorHandler.buildDepError "CSPM-Interpreter"))
          (hsPkgs."CSPM-ToProlog" or (errorHandler.buildDepError "CSPM-ToProlog"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
        ];
        buildable = true;
      };
      exes = {
        "cspm" = {
          depends = [
            (hsPkgs."CSPM-Frontend" or (errorHandler.buildDepError "CSPM-Frontend"))
            (hsPkgs."CSPM-CoreLanguage" or (errorHandler.buildDepError "CSPM-CoreLanguage"))
            (hsPkgs."CSPM-FiringRules" or (errorHandler.buildDepError "CSPM-FiringRules"))
            (hsPkgs."CSPM-Interpreter" or (errorHandler.buildDepError "CSPM-Interpreter"))
            (hsPkgs."CSPM-ToProlog" or (errorHandler.buildDepError "CSPM-ToProlog"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
            (hsPkgs."hslua" or (errorHandler.buildDepError "hslua"))
          ];
          buildable = true;
        };
      };
    };
  }
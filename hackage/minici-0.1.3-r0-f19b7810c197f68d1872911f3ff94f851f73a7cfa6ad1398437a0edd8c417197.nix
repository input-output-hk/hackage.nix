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
    flags = { ci = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "minici"; version = "0.1.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "roman.smrz@seznam.cz";
      author = "Roman Smrž";
      homepage = "https://erebosprotocol.net/minici";
      url = "";
      synopsis = "Minimalist CI framework to run checks on local machine";
      description = "Runs defined jobs, for example to build and test a project, for each git\ncommit in a given set and reports results. The jobs are configured in\na simple YAML file and can produce artifacts to be used in other steps.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "minici" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."hinotify" or (errorHandler.buildDepError "hinotify"))
            (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parser-combinators" or (errorHandler.buildDepError "parser-combinators"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }
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
    flags = { executable = true; library = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "ampersand"; version = "3.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "Stef Joosten";
      maintainer = "stef.joosten@ou.nl";
      author = "Stef Joosten";
      homepage = "ampersand.sourceforge.net";
      url = "";
      synopsis = "Toolsuite for automated design of business processes.";
      description = "You can define your business processes by means of rules, written in Relation Algebra.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."SpreadsheetML" or (errorHandler.buildDepError "SpreadsheetML"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
          ];
        buildable = if flags.library then true else false;
        };
      exes = {
        "ampersand" = {
          depends = [
            (hsPkgs."ampersand" or (errorHandler.buildDepError "ampersand"))
            (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = if flags.executable then true else false;
          };
        };
      };
    }
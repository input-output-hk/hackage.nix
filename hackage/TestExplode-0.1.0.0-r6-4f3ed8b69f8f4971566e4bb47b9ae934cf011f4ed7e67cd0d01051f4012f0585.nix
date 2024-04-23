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
      identifier = { name = "TestExplode"; version = "0.1.0.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) Hans-Jürgen Guth 2015";
      maintainer = "juergen.software@freea2a.de";
      author = "Hans-Jürgen Guth";
      homepage = "https://github.com/testexplode/testexplode        ";
      url = "";
      synopsis = "Generates testcases from program-snippets";
      description = "Generates testcases from program-snippets in any language, with varables, that are substituted and a directed graph structure of the snippets and \"test hints\"       ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."interpolatedstring-perl6" or (errorHandler.buildDepError "interpolatedstring-perl6"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }
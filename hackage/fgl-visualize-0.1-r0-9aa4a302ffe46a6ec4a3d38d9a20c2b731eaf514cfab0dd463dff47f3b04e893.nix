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
      specVersion = "1.6";
      identifier = { name = "fgl-visualize"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Convert FGL graphs to dot (graphviz) files";
      description = "Convert FGL graphs to dot files for easy visualization\nusing the 'dot' tool.  Other visualizations might follow\nbut there are no immediate plans (patches welcome).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."dotgen" or (errorHandler.buildDepError "dotgen"))
        ];
        buildable = true;
      };
    };
  }
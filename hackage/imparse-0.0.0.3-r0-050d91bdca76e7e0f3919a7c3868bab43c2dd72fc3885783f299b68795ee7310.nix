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
      identifier = { name = "imparse"; version = "0.0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Andrei Lapets <lapets@bu.edu>";
      author = "Andrei Lapets";
      homepage = "";
      url = "";
      synopsis = "Multi-platform parser analyzer and generator.";
      description = "Multi-platform parser analyzer and generator.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."staticanalysis" or (errorHandler.buildDepError "staticanalysis"))
          (hsPkgs."compilation" or (errorHandler.buildDepError "compilation"))
          (hsPkgs."ascetic" or (errorHandler.buildDepError "ascetic"))
          (hsPkgs."uxadt" or (errorHandler.buildDepError "uxadt"))
          (hsPkgs."richreports" or (errorHandler.buildDepError "richreports"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."indents" or (errorHandler.buildDepError "indents"))
        ];
        buildable = true;
      };
      exes = {
        "imparse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."staticanalysis" or (errorHandler.buildDepError "staticanalysis"))
            (hsPkgs."compilation" or (errorHandler.buildDepError "compilation"))
            (hsPkgs."ascetic" or (errorHandler.buildDepError "ascetic"))
            (hsPkgs."uxadt" or (errorHandler.buildDepError "uxadt"))
            (hsPkgs."richreports" or (errorHandler.buildDepError "richreports"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."indents" or (errorHandler.buildDepError "indents"))
          ];
          buildable = true;
        };
      };
    };
  }
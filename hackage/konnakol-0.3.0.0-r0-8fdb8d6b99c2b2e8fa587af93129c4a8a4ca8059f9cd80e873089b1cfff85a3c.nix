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
      specVersion = "2.4";
      identifier = { name = "konnakol"; version = "0.3.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "aravindmohandas.2k@gmail.com";
      author = "Aravind Mohandas";
      homepage = "https://github.com/tidalcycles/konnakol-gsoc";
      url = "";
      synopsis = "Formalising the rules of Konnakol, an Indian percussional art form.";
      description = "Formalising the rules of Konnakol, an Indian percussional art form. Compositions can be validated, custom compositions can be generated as well as visualized. Compositions can also be generated in mini notation, which can they be used by Tidal Cycles to facilitate equivalent audio generation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."tidal" or (errorHandler.buildDepError "tidal"))
        ];
        buildable = true;
      };
      tests = {
        "konnakol-test" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }
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
      specVersion = "1.18";
      identifier = { name = "combinat-diagrams"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Graphical representations for various combinatorial objects";
      description = "Uses the @diagrams@ library to generate graphical\nrepresentations of combinatorial objects from\nthe @combinat@ library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."diagrams-core" or (errorHandler.buildDepError "diagrams-core"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
          ];
        buildable = true;
        };
      };
    }
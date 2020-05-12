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
      specVersion = "1.8";
      identifier = { name = "pi-calculus"; version = "0.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "will.derenzymartin@gmail.com";
      author = "Will de Renzy-Martin";
      homepage = "https://github.com/renzyq19/pi-calculus";
      url = "";
      synopsis = "Applied pi-calculus compiler";
      description = "Phi - A compiler for the applied pi-calculus. Very rough around the edges.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "phi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            ];
          buildable = true;
          };
        };
      };
    }
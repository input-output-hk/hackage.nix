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
      identifier = { name = "hails-bin"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Amit Levy <levya at cs.stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "Dynamic launcher of Hails applications";
      description = "Executable for deploying Hails (see the hails Hackage package)\napplications.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hails" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hails" or (errorHandler.buildDepError "hails"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."iterIO" or (errorHandler.buildDepError "iterIO"))
            (hsPkgs."iterio-server" or (errorHandler.buildDepError "iterio-server"))
            (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
            (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }
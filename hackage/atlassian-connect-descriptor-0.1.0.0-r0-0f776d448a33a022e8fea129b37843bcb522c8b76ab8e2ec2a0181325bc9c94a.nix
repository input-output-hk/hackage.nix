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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.20";
      identifier = {
        name = "atlassian-connect-descriptor";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "rmassaioli@atlassian.com";
      author = "Robert Massaioli";
      homepage = "";
      url = "";
      synopsis = "Code that helps you create a valid Atlassian Connect Descriptor.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          (hsPkgs."cases" or (errorHandler.buildDepError "cases"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ] ++ [
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
      tests = {
        "test-descriptor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
            (hsPkgs."cases" or (errorHandler.buildDepError "cases"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ] ++ [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ];
          buildable = true;
        };
      };
    };
  }
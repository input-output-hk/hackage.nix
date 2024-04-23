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
      specVersion = "2.2";
      identifier = { name = "licensor"; version = "0.4.3"; };
      license = "MIT";
      copyright = "2016 J. P. Villa Isaza";
      maintainer = "J. P. Villa Isaza <jpvillaisaza@gmail.com>";
      author = "J. P. Villa Isaza <jpvillaisaza@gmail.com>";
      homepage = "https://licensor.jpvillaisaza.co/";
      url = "";
      synopsis = "A license compatibility helper";
      description = "A license compatibility helper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "licensor" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."licensor" or (errorHandler.buildDepError "licensor"))
          ];
          buildable = true;
        };
      };
    };
  }
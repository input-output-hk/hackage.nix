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
      specVersion = "1.0";
      identifier = { name = "pointfree"; version = "1.0.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "";
      author = "Thomas Jäger";
      homepage = "http://haskell.org/haskellwiki/Pointfree";
      url = "";
      synopsis = "Pointfree refactoring tool";
      description = "Stand-alone command-line version of the point-less plugin for lambdabot.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pointfree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
      };
    };
  }
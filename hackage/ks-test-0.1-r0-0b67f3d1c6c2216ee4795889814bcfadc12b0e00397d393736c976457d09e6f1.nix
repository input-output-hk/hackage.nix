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
      identifier = { name = "ks-test"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "";
      url = "";
      synopsis = "Kolmogorov distribution and Kolmogorov-Smirnov test.";
      description = "Kolmogorov distribution and Kolmogorov-Smirnov test.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."gamma" or (errorHandler.buildDepError "gamma"))
          (hsPkgs."random-fu" or (errorHandler.buildDepError "random-fu"))
          (hsPkgs."roots" or (errorHandler.buildDepError "roots"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }
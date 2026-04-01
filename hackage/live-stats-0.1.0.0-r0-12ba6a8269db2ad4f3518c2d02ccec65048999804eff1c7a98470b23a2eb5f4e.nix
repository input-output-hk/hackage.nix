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
      specVersion = "1.12";
      identifier = { name = "live-stats"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014, Soostone Inc";
      maintainer = "alexander.shestakov@soostone.com";
      author = "Ozgun Ataman";
      homepage = "";
      url = "";
      synopsis = "A reusable run-time stats module.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }
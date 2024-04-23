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
      specVersion = "3.0";
      identifier = { name = "opaleye-textsearch"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "gargantext@iscpif.fr";
      author = "Gargantext Engineering Team";
      homepage = "";
      url = "";
      synopsis = "Text search utilities for Opaleye";
      description = "Utility functions to work with TS vectors in Postgres via Opaleye.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."opaleye" or (errorHandler.buildDepError "opaleye"))
        ];
        buildable = true;
      };
      tests = {
        "opaleye-textsearch-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."opaleye-textsearch" or (errorHandler.buildDepError "opaleye-textsearch"))
          ];
          buildable = true;
        };
      };
    };
  }
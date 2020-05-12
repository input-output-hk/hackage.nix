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
      specVersion = "1.10";
      identifier = { name = "hora"; version = "2.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Imants Cekusins";
      author = "Imants Cekusins";
      homepage = "https://github.com/ciez/hora";
      url = "";
      synopsis = "date time";
      description = "convenient type, timestamp, timezone, format";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."timezone-series" or (errorHandler.buildDepError "timezone-series"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timezone-series" or (errorHandler.buildDepError "timezone-series"))
            (hsPkgs."timezone-olson" or (errorHandler.buildDepError "timezone-olson"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            ];
          buildable = true;
          };
        };
      };
    }
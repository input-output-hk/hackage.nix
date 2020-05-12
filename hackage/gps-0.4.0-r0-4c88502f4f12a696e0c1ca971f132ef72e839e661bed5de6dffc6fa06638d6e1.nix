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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "gps"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "For manipulating GPS coordinates and trails.";
      description = "Useful for manipulating GPS coordinages (in various forms), building paths, and performing basic computations";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }
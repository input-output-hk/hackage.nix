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
      identifier = { name = "RESTng"; version = "0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "none";
      author = "RedNucleus (see AUTHORS)";
      homepage = "";
      url = "";
      synopsis = "A framework for writing RESTful applications.";
      description = "RESTng is still experimental and incomplete, but many implemented features may be of interest, including: grids for presentation,\nhierarchical URLs automatic handling, ORM generates tables from haskell records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HDBC-postgresql" or (errorHandler.buildDepError "HDBC-postgresql"))
          (hsPkgs."redHandlers" or (errorHandler.buildDepError "redHandlers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."yuiGrid" or (errorHandler.buildDepError "yuiGrid"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ];
        buildable = true;
        };
      };
    }
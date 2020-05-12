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
      specVersion = "1.2.3.0";
      identifier = { name = "debian-binary"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 Marco Túlio Gontijo e Silva <marcot@riseup.net>";
      maintainer = "Marco Túlio Gontijo e Silva <marcot@riseup.net>";
      author = "Marco Túlio Gontijo e Silva";
      homepage = "";
      url = "";
      synopsis = "Utilities to work with debian binary packages";
      description = "This package provides a library and some tools to work with debian binary\npackages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."HSH" or (errorHandler.buildDepError "HSH"))
          ];
        buildable = true;
        };
      exes = {
        "manual" = { buildable = true; };
        "query" = { buildable = true; };
        "update" = { buildable = true; };
        };
      };
    }
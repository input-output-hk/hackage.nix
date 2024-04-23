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
      identifier = { name = "squeather"; version = "0.8.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020-2021 Omari Norman";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "";
      url = "";
      synopsis = "Use databases with the version 3 series of the SQLite C library";
      description = "This library allows you to use databases with the version 3 series\nof the [SQLite](https://sqlite.org) C library.  The biggest difference\nbetween this library and others available on Hackage is that it uses the\nextended error descriptions that SQLite makes available.  It also cleans up\nresources such as database and statement handles in an automatic, though\nnon-deterministic, fashion.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "squeather-tests" = {
          depends = [
            (hsPkgs."squeather" or (errorHandler.buildDepError "squeather"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
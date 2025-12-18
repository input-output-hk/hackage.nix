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
      identifier = { name = "megaparsec-csv"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "GPL";
      maintainer = "noahmartinwilliams@gmail.com";
      author = "Noah Martin Williams";
      homepage = "https://github.com/noahmartinwilliams/megaparsec-csv#readme";
      url = "";
      synopsis = "A megaparsec library for CSV files.";
      description = "A Simple megaparsec library for parsing CSV data with optional escape characters.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
        ];
        buildable = true;
      };
    };
  }
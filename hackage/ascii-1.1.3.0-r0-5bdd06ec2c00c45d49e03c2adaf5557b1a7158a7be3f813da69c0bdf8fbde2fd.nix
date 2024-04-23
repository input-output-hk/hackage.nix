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
      identifier = { name = "ascii"; version = "1.1.3.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/ascii";
      url = "";
      synopsis = "The ASCII character set and encoding";
      description = "This package provides a variety of ways to work with ASCII text.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."ascii-char" or (errorHandler.buildDepError "ascii-char"))
          (hsPkgs."ascii-group" or (errorHandler.buildDepError "ascii-group"))
          (hsPkgs."ascii-case" or (errorHandler.buildDepError "ascii-case"))
          (hsPkgs."ascii-numbers" or (errorHandler.buildDepError "ascii-numbers"))
          (hsPkgs."ascii-predicates" or (errorHandler.buildDepError "ascii-predicates"))
          (hsPkgs."ascii-superset" or (errorHandler.buildDepError "ascii-superset"))
          (hsPkgs."ascii-th" or (errorHandler.buildDepError "ascii-th"))
        ];
        buildable = true;
      };
      tests = {
        "test-ascii" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."ascii" or (errorHandler.buildDepError "ascii"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }
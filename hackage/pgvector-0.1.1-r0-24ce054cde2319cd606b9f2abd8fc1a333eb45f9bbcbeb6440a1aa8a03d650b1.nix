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
      identifier = { name = "pgvector"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew@ankane.org";
      author = "Andrew Kane";
      homepage = "https://github.com/pgvector/pgvector-haskell";
      url = "";
      synopsis = "pgvector support for Haskell";
      description = "Adds the vector data type to postgresql-simple";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
        ];
        buildable = true;
      };
      tests = {
        "pgvector-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pgvector" or (errorHandler.buildDepError "pgvector"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          ];
          buildable = true;
        };
      };
    };
  }
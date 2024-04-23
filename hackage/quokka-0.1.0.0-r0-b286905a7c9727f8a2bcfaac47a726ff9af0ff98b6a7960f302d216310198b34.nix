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
      identifier = { name = "quokka"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "shirren.premaratne@gmail.com";
      author = "Shirren Premaratne";
      homepage = "https://github.com/shirren/quokka";
      url = "";
      synopsis = "Test helpers which help generate data for projects that use postgresql.";
      description = "Quokka is a library that helps generate test data for projects that use postgresql. The\ngenerated test data is inserted into Postgres for access by libraries such as Beam, Traction\nand postgresql-simple etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
          (hsPkgs."pcre-utils" or (errorHandler.buildDepError "pcre-utils"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "quokka-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."quokka" or (errorHandler.buildDepError "quokka"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }
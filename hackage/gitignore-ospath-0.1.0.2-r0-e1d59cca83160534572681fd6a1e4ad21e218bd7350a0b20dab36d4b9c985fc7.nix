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
      identifier = { name = "gitignore-ospath"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "federicotedin@gmail.com";
      author = "Federico Tedin";
      homepage = "https://github.com/federicotdn/gitignore-ospath";
      url = "";
      synopsis = "Library for reading .gitignore files and filtering paths";
      description = "Library for reading .gitignore files and filtering paths.\nThe library works with .gitignore-like formats (e.g., .dockerignore) and uses\n'System.OsPath.OsPath' for path handling. Parsing and filtering rules follow the\nGit documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "gitignore-ospath-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."os-string" or (errorHandler.buildDepError "os-string"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."gitignore-ospath" or (errorHandler.buildDepError "gitignore-ospath"))
          ];
          buildable = true;
        };
      };
    };
  }
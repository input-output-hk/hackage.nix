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
      identifier = { name = "shunya-library"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/shunya-library#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "shunya-library-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shunya-library" or (errorHandler.buildDepError "shunya-library"))
            ];
          buildable = true;
          };
        };
      tests = {
        "shunya-library-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."shunya-library" or (errorHandler.buildDepError "shunya-library"))
            ];
          buildable = true;
          };
        };
      };
    }
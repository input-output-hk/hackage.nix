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
      identifier = { name = "trek-lens"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/trek-lens#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/githubuser/trek-lens#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."trek" or (errorHandler.buildDepError "trek"))
        ];
        buildable = true;
      };
      tests = {
        "trek-lens-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."logict" or (errorHandler.buildDepError "logict"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."trek" or (errorHandler.buildDepError "trek"))
            (hsPkgs."trek-lens" or (errorHandler.buildDepError "trek-lens"))
          ];
          buildable = true;
        };
      };
    };
  }
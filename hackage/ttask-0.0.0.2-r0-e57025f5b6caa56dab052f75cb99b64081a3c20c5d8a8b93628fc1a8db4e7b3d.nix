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
      identifier = { name = "ttask"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Tokiwo Ousaka";
      maintainer = "its.out.of.tune.this.my.music@gmail.com";
      author = "Tokiwo Ousaka";
      homepage = "https://github.com/tokiwoousaka/ttask#readme";
      url = "";
      synopsis = "This is task management tool for yourself, that inspired by scrum.";
      description = "Please see README.md (ja)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "ttask" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."ttask" or (errorHandler.buildDepError "ttask"))
            (hsPkgs."optparse-declarative" or (errorHandler.buildDepError "optparse-declarative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ttask-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ttask" or (errorHandler.buildDepError "ttask"))
          ];
          buildable = true;
        };
      };
    };
  }
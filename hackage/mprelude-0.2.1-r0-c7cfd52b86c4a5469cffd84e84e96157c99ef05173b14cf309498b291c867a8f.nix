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
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "mprelude"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Markus Schirp <mbj@schirp-dso.com>";
      author = "";
      homepage = "https://github.com/mbj/mprelude#readme";
      url = "";
      synopsis = "A minimalish prelude.";
      description = "Prelude extracted from observing NoImplicitPrelude using\nprojects by https://github.com/mbj.\n\nIdea is to not design a prelude, but to observe one by\ndeduplicating repeated imports cross a larger project space.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."source-constraints" or (errorHandler.buildDepError "source-constraints"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        buildable = true;
      };
      tests = {
        "devtools" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."devtools" or (errorHandler.buildDepError "devtools"))
            (hsPkgs."source-constraints" or (errorHandler.buildDepError "source-constraints"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
          ];
          buildable = true;
        };
      };
    };
  }
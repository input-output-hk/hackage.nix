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
      identifier = {
        name = "hetero-parameter-list-with-typelevel-tools";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2023 Author name here";
      maintainer = "example@example.com";
      author = "Author name here";
      homepage = "https://github.com/githubuser/hetero-parameter-list-with-typelevel-tools#readme";
      url = "";
      synopsis = "Hetero parameter list with type level tools";
      description = "Please see the README on GitHub at <https://github.com/githubuser/hetero-parameter-list-with-typelevel-tools#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
        ];
        buildable = true;
      };
      tests = {
        "hetero-parameter-list-with-typelevel-tools-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hetero-parameter-list" or (errorHandler.buildDepError "hetero-parameter-list"))
            (hsPkgs."hetero-parameter-list-with-typelevel-tools" or (errorHandler.buildDepError "hetero-parameter-list-with-typelevel-tools"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."typelevel-tools-yj" or (errorHandler.buildDepError "typelevel-tools-yj"))
          ];
          buildable = true;
        };
      };
    };
  }
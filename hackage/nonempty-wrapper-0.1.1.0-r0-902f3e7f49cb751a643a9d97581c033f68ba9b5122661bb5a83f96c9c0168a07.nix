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
      identifier = { name = "nonempty-wrapper"; version = "0.1.1.0"; };
      license = "ISC";
      copyright = "";
      maintainer = "foss@difolco.dev";
      author = "Gautier DI FOLCO";
      homepage = "http://github.com/blackheaven/nonempty-wrapper/nonempty-wrapper";
      url = "";
      synopsis = "Create NonEmpty version of any container";
      description = "Create NonEmpty version of any container.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "nonempty-wrapper-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nonempty-wrapper" or (errorHandler.buildDepError "nonempty-wrapper"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
          ];
          buildable = true;
        };
      };
    };
  }
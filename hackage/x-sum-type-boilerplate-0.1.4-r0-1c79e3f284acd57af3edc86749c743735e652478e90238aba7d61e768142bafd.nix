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
      identifier = { name = "x-sum-type-boilerplate"; version = "0.1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "David Reaver, xieyuschen";
      author = "David Reaver";
      homepage = "https://github.com/xieyuschen/x-sum-type-boilerplate#readme";
      url = "";
      synopsis = "(Forked) Library for reducing the boilerplate involved with sum types";
      description = "(Forked) Library for reducing the boilerplate involved in creating and manipulating sum types";
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
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."x-sum-type-boilerplate" or (errorHandler.buildDepError "x-sum-type-boilerplate"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }
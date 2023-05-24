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
      specVersion = "2.2";
      identifier = { name = "servant-queryparam-openapi3"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen 2020";
      maintainer = "Danila Danko <https://github.com/deemp>";
      author = "Kristof Bastiaensen";
      homepage = "";
      url = "";
      synopsis = "Instances of classes from openapi3 for servant-queryparam-core.";
      description = "Instances of classes from [openapi3](https://hackage.haskell.org/package/openapi3) for [servant-queryparam-core](https://hackage.haskell.org/package/servant-queryparam-core).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."openapi3" or (errorHandler.buildDepError "openapi3"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-openapi3" or (errorHandler.buildDepError "servant-openapi3"))
          (hsPkgs."servant-queryparam-core" or (errorHandler.buildDepError "servant-queryparam-core"))
          ];
        buildable = true;
        };
      };
    }
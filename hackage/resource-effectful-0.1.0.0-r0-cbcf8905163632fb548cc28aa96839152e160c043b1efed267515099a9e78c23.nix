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
      identifier = { name = "resource-effectful"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2023 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/resource-effectful";
      url = "";
      synopsis = "A region-based resource effect for the effectful ecosystem.";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/resource-effectful#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }
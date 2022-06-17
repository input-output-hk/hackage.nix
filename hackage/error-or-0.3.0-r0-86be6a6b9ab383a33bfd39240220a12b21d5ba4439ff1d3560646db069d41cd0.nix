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
      identifier = { name = "error-or"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Kamil Dworakowski";
      maintainer = "kamil@dworakowski.name";
      author = "Kamil Dworakowski";
      homepage = "https://github.com/luntain/error-or-bundle/blob/master/error-or#readme";
      url = "";
      synopsis = "Composable, hierarchical errors.";
      description = "An Applicative Functor with error accumulation. Built in tree like error type meant for gathering and reporting errors to users.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }
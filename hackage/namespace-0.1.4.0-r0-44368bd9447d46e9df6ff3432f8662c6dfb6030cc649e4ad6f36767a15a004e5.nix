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
      identifier = { name = "namespace"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2018 Hao Xu";
      maintainer = "xuh@cs.unc.edu";
      author = "Hao Xu";
      homepage = "https://github.com/xu-hao/namespace";
      url = "";
      synopsis = "A Generic Haskell library for managing namespaces";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monoid-extras" or (errorHandler.buildDepError "monoid-extras"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "namespace-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."namespace" or (errorHandler.buildDepError "namespace"))
            ];
          buildable = true;
          };
        };
      };
    }
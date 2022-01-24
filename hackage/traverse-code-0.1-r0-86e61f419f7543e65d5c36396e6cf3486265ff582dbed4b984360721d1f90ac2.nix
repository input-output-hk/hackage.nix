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
      identifier = { name = "traverse-code"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David.Feuer@gmail.com";
      author = "David Feuer";
      homepage = "https://github.com/treeowl/traverse-code";
      url = "";
      synopsis = "General data structure lifting for Template Haskell";
      description = "\nThis package provides a simple type class to use Template Haskell\nto generate code for building data structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."linear-generics" or (errorHandler.buildDepError "linear-generics"))
          ];
        buildable = true;
        };
      tests = {
        "traverse-code-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."traverse-code" or (errorHandler.buildDepError "traverse-code"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."linear-generics" or (errorHandler.buildDepError "linear-generics"))
            ];
          buildable = true;
          };
        };
      };
    }
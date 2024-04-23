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
      identifier = { name = "tiphys"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2016 Ladislav Lhotka";
      maintainer = "lhotka@nic.cz";
      author = "Ladislav Lhotka";
      homepage = "https://github.com/llhotka/tiphys";
      url = "";
      synopsis = "Navigating and editing JSON data";
      description = "A library that enables navigation in aeson Values and their editing.\n\nThe zipper API is described in the @Data.Aeson.Zipper@ module.\n\n(A note on naming: Tiphys was the steersman and navigator on Jason's Argo.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tiphys" or (errorHandler.buildDepError "tiphys"))
          ];
          buildable = true;
        };
      };
    };
  }
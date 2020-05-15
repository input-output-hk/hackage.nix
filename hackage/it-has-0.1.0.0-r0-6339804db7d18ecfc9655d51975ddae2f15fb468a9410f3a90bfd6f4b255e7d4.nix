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
      identifier = { name = "it-has"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Dobromir Nikolov";
      maintainer = "dnikolovv@hotmail.com";
      author = "Dobromir Nikolov";
      homepage = "https://github.com/dnikolovv/it-has#readme";
      url = "";
      synopsis = "Automatically derivable Has instances.";
      description = "Please see the README on GitHub at <https://github.com/dnikolovv/it-has#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          ];
        buildable = true;
        };
      tests = {
        "it-has-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
            (hsPkgs."it-has" or (errorHandler.buildDepError "it-has"))
            ];
          buildable = true;
          };
        };
      };
    }
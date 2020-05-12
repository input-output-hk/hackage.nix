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
      identifier = { name = "snipcheck"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Nicolas Mattia";
      maintainer = "nicolas@nmattia.com";
      author = "Nicolas Mattia";
      homepage = "https://github.com/nmattia/snipcheck#readme";
      url = "";
      synopsis = "Markdown tester";
      description = "Markdown snippet runner and checker";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      };
    }
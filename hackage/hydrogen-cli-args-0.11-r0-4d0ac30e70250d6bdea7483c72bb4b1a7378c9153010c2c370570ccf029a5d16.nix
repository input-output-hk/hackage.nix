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
      specVersion = "1.14";
      identifier = { name = "hydrogen-cli-args"; version = "0.11"; };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-cli-args/";
      url = "";
      synopsis = "Hydrogen Command Line Arguments Parser";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hydrogen-multimap" or (errorHandler.buildDepError "hydrogen-multimap"))
          (hsPkgs."hydrogen-prelude" or (errorHandler.buildDepError "hydrogen-prelude"))
          ];
        buildable = true;
        };
      };
    }
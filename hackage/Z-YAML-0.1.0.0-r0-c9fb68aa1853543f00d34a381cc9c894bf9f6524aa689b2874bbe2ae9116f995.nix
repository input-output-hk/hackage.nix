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
      identifier = { name = "Z-YAML"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Dong Han, 2020";
      maintainer = "winterland1989@gmail.com";
      author = "Dong Han";
      homepage = "https://github.com/haskell-Z/z-yaml";
      url = "";
      synopsis = "YAML tools";
      description = "YAML reading & writing tools for Z project.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."Z-Data" or (errorHandler.buildDepError "Z-Data"))
          (hsPkgs."Z-IO" or (errorHandler.buildDepError "Z-IO"))
          ];
        buildable = true;
        };
      };
    }
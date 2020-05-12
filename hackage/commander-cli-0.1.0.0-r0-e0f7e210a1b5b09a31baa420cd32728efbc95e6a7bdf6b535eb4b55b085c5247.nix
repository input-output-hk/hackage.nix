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
      specVersion = "2.4";
      identifier = { name = "commander-cli"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Samuel Schlesinger";
      maintainer = "sgschlesinger@gmail.com";
      author = "Samuel Schlesinger";
      homepage = "https://github.com/SamuelSchlesinger/commander-cli";
      url = "";
      synopsis = "A command line argument/option parser library built around a monadic metaphor";
      description = "A command line argument/option parser library built around a monadic metaphor.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "commander-cli" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."commander-cli" or (errorHandler.buildDepError "commander-cli"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      identifier = { name = "extensioneer"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "markus.l2ll@gmail.com";
      author = "Markus Läll";
      homepage = "";
      url = "";
      synopsis = "Inspect extensions in cabal and hpack files";
      description = "\nextensioneer - Inspect extensions in cabal and hpack files\n\nSee readme for more: https://github.com/eyeinsky/extensioneer";
      buildType = "Simple";
      };
    components = {
      exes = {
        "extensioneer" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hpack" or (errorHandler.buildDepError "hpack"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }
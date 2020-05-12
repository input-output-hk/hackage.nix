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
      identifier = { name = "exherbo-cabal"; version = "0.1.0.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "virkony@gmail.com";
      author = "Mykola Orliuk";
      homepage = "";
      url = "";
      synopsis = "Exheres generator for cabal packages";
      description = "Generate package description from .cabal files in format\nof exheres-0 for Exherbo Linux.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "exherbo-cabal" = {
          depends = [
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        };
      };
    }
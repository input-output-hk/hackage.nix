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
      identifier = { name = "prove-everywhere-server"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amutake.s@gmail.com";
      author = "Shohei Yasutake";
      homepage = "https://github.com/amutake/prove-everywhere";
      url = "";
      synopsis = "The server for ProveEverywhere";
      description = "This is the server for ProveEverywhere project.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "prove-everywhere-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            ];
          buildable = true;
          };
        };
      };
    }
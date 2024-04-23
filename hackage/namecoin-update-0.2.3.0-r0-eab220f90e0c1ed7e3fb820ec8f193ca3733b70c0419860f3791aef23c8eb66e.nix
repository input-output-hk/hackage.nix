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
      identifier = { name = "namecoin-update"; version = "0.2.3.0"; };
      license = "GPL-3.0-only";
      copyright = "(C) Michele Guerini Rocco 2022";
      maintainer = "rnhmjoj@inventati.org";
      author = "rnhmjoj";
      homepage = "";
      url = "";
      synopsis = "Tool to keep namecoin names updated and well";
      description = "A small program that updates the names in a namecoin wallet\nto prevent expiration. It uses the JSON-RPC API provided by\nnamecoind to scan and update the values of the name when needed.\nThe tool is intended to be run regularly, for example from cron.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
        ];
        buildable = true;
      };
      exes = {
        "namecoin-update" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."namecoin-update" or (errorHandler.buildDepError "namecoin-update"))
          ];
          buildable = true;
        };
      };
    };
  }
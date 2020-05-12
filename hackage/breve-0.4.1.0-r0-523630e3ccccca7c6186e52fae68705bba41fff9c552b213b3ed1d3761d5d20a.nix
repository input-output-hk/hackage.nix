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
      identifier = { name = "breve"; version = "0.4.1.0"; };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco 2015";
      maintainer = "micheleguerinirocco@me.com";
      author = "Rnhmjoj";
      homepage = "https://github.com/rnhmjoj/breve";
      url = "";
      synopsis = "a url shortener";
      description = "Breve is a web application that provides a simple interface to\nshortening long urls creating links smaller and easier to remember.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "breve" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            (hsPkgs."Spock" or (errorHandler.buildDepError "Spock"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }
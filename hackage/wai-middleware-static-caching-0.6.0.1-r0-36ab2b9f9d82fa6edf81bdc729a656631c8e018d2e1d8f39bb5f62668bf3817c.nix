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
      identifier = {
        name = "wai-middleware-static-caching";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Andrew Farmer, (c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Andrew Farmer <afarmer@ittc.ku.edu>, Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/wai-middleware-static";
      url = "";
      synopsis = "WAI middleware that serves requests to static files.";
      description = "Fork of wai-middleware-static introducing caching:\nWAI middleware that intercepts requests to static files and serves them\nif they exist. Also implements caching strategies.\n\n[WAI] <http://hackage.haskell.org/package/wai>\n[wai-middleware-static] <http://hackage.haskell.org/package/wai-middleware-static>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."expiring-cache-map" or (errorHandler.buildDepError "expiring-cache-map"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }
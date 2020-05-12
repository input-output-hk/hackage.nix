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
    flags = { maintainer = false; build-examples = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "playlists-http"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Peter Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "https://github.com/pjones/playlists-http";
      url = "";
      synopsis = "Library to glue together playlists and http-client";
      description = "Simple library for resolving playlists using http-client.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."playlists" or (errorHandler.buildDepError "playlists"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = (pkgs.lib).optionals (!(!flags.build-examples)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."playlists-http" or (errorHandler.buildDepError "playlists-http"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = if !flags.build-examples then false else true;
          };
        };
      };
    }
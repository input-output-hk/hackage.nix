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
      identifier = { name = "nicovideo-translator"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "(c) 2015 Hong Minhee";
      maintainer = "hongminhee@member.fsf.org";
      author = "Hong Minhee";
      homepage = "https://github.com/dahlia/nicovideo-translator";
      url = "";
      synopsis = "Nico Nico Douga (ニコニコ動画) Comment Translator";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."iso639" or (errorHandler.buildDepError "iso639"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "nicovideo-translator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
            (hsPkgs."iso639" or (errorHandler.buildDepError "iso639"))
            (hsPkgs."nicovideo-translator" or (errorHandler.buildDepError "nicovideo-translator"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }
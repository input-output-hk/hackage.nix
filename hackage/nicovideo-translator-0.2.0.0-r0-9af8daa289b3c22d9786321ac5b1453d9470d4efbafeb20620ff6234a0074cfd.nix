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
      identifier = { name = "nicovideo-translator"; version = "0.2.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "(c) 2015–2016 Hong Minhee";
      maintainer = "hong.minhee@gmail.com";
      author = "Hong Minhee";
      homepage = "https://github.com/dahlia/nicovideo-translator";
      url = "";
      synopsis = "Nico Nico Douga (ニコニコ動画) Comment Translator";
      description = "Translate comments (written in Japanese) on\nNico Nico Douga (ニコニコ動画) to your language.\n\nSee also README.md for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."iso639" or (errorHandler.buildDepError "iso639"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "nicovideo-translator" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nicovideo-translator" or (errorHandler.buildDepError "nicovideo-translator"))
            ];
          buildable = true;
          };
        };
      };
    }
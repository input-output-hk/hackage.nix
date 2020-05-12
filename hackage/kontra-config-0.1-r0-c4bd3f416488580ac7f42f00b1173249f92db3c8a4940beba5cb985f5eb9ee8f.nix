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
      identifier = { name = "kontra-config"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Gracjan Polak <gracjan@scrive.com>, Jonathan Jouty <jonathan@scrive.com>, Mikhail Glushenkov <mikhail@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/kontra-config";
      url = "";
      synopsis = "JSON config file parsing based on unjson";
      description = "A library for reading JSON configuration files. Based on unjson.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unjson" or (errorHandler.buildDepError "unjson"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      };
    }
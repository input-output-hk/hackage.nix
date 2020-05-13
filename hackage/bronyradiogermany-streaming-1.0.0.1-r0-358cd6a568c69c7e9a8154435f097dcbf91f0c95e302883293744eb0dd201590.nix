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
        name = "bronyradiogermany-streaming";
        version = "1.0.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "darcs@m.doomanddarkness.eu";
      author = "Marvin Cohrs";
      homepage = "";
      url = "";
      synopsis = "Streaming interface for the BronyRadioGermany API.";
      description = "This is a streaming interface for the API of BronyRadioGermany. Features: get the currently played song, the entire song history, the AutoDj track list, vote statistics, and the raw audio streams; it can also post up- and downvotes, as well as song requests. If you prefer conduit over streaming, please have a look at bronyradiogermany-conduit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (errorHandler.buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-utils" or (errorHandler.buildDepError "streaming-utils"))
          (hsPkgs."bronyradiogermany-common" or (errorHandler.buildDepError "bronyradiogermany-common"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
        buildable = true;
        };
      };
    }
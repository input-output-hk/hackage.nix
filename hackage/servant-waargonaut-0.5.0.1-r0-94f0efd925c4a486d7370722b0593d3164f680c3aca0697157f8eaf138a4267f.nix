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
      identifier = { name = "servant-waargonaut"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Commonwealth Scientific and Industrial Research Organisation (CSIRO)";
      maintainer = "oᴉ˙ldɟb@uɐǝs";
      author = "QFPL @ Data61";
      homepage = "";
      url = "";
      synopsis = "Servant Integration for Waargonaut JSON Package";
      description = "Provides the types and instances necessary to utilise Waargonaut as the JSON handling library for your Servant API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."waargonaut" or (errorHandler.buildDepError "waargonaut"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."wl-pprint-annotated" or (errorHandler.buildDepError "wl-pprint-annotated"))
          ];
        buildable = true;
        };
      tests = {
        "saarg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-waargonaut" or (errorHandler.buildDepError "servant-waargonaut"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."waargonaut" or (errorHandler.buildDepError "waargonaut"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."wl-pprint-annotated" or (errorHandler.buildDepError "wl-pprint-annotated"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-wai" or (errorHandler.buildDepError "tasty-wai"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
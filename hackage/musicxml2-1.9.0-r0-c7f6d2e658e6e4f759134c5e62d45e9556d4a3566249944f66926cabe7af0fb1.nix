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
      identifier = { name = "musicxml2"; version = "1.9.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hans Hoglund";
      author = "Hans Hoglund";
      homepage = "";
      url = "";
      synopsis = "A representation of the MusicXML format.";
      description = "A representation of the MusicXML format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."nats" or (errorHandler.buildDepError "nats"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."type-unary" or (errorHandler.buildDepError "type-unary"))
          (hsPkgs."reverse-apply" or (errorHandler.buildDepError "reverse-apply"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."music-pitch-literal" or (errorHandler.buildDepError "music-pitch-literal"))
          (hsPkgs."music-dynamics-literal" or (errorHandler.buildDepError "music-dynamics-literal"))
          ];
        buildable = true;
        };
      };
    }
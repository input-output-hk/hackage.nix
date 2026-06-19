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
      specVersion = "3.0";
      identifier = { name = "pqi-native"; version = "0.0.1.0"; };
      license = "MIT";
      copyright = "(c) 2026, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/pqi-native";
      url = "";
      synopsis = "Native (pure-Haskell) adapter for pqi";
      description = "A @pqi@ adapter that speaks the PostgreSQL frontend\\/backend wire\nprotocol directly, with no dependency on the C @libpq@ library. The transport\nlayer (framing, message serialization\\/deserialization, socket I\\/O) is\nisolated in an internal @transport@ sub-library built on @ptr-poker@ and\n@ptr-peeker@; the public library is an abstraction over it that implements the\n@pqi@ capability classes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
          (hsPkgs."pqi" or (errorHandler.buildDepError "pqi"))
          (hsPkgs."pqi-native".components.sublibs.transport or (errorHandler.buildDepError "pqi-native:transport"))
          (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
        ];
        buildable = true;
      };
      sublibs = {
        "comms" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."ptr-peeker" or (errorHandler.buildDepError "ptr-peeker"))
            (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "transport" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pqi-native".components.sublibs.comms or (errorHandler.buildDepError "pqi-native:comms"))
            (hsPkgs."ptr-poker" or (errorHandler.buildDepError "ptr-poker"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "native-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pqi-conformance" or (errorHandler.buildDepError "pqi-conformance"))
            (hsPkgs."pqi-native" or (errorHandler.buildDepError "pqi-native"))
          ];
          buildable = true;
        };
      };
    };
  }
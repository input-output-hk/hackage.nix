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
      identifier = { name = "roundtrip-aeson"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2014-2015 Anchor Systems and others.";
      maintainer = "Christian Marie";
      author = "Thomas Sutton <me@thomas-sutton.id.au>, Christian Marie <christian@ponies.io>";
      homepage = "https://github.com/christian-marie/roundtrip-aeson";
      url = "";
      synopsis = "Un-/parse JSON with roundtrip invertible syntax definitions.";
      description = "Un-/parse JSON with roundtrip invertible syntax definitions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."roundtrip" or (errorHandler.buildDepError "roundtrip"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."roundtrip" or (errorHandler.buildDepError "roundtrip"))
            (hsPkgs."roundtrip-aeson" or (errorHandler.buildDepError "roundtrip-aeson"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }
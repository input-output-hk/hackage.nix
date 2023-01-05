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
      specVersion = "2.2";
      identifier = { name = "gemcap"; version = "0.1.0.1"; };
      license = "AGPL-3.0-or-later";
      copyright = "2021 Jonathan Lamothe";
      maintainer = "jonathan@jlamothe.net";
      author = "Jonathan Lamothe";
      homepage = "https://codeberg.org/jlamothe/gemcap";
      url = "";
      synopsis = "a simple Gemini capsule (server)";
      description = "a simple Gemini capsule (server) - see README.md for details";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."tcp-streams" or (errorHandler.buildDepError "tcp-streams"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          ];
        buildable = true;
        };
      tests = {
        "gemcap-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."gemcap" or (errorHandler.buildDepError "gemcap"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."tcp-streams" or (errorHandler.buildDepError "tcp-streams"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            ];
          buildable = true;
          };
        };
      };
    }
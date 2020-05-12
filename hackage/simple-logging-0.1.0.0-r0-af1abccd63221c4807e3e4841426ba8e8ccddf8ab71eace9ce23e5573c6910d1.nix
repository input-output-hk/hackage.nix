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
      identifier = { name = "simple-logging"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Luka Horvat";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "https://gitlab.com/haskell-hr/logging";
      url = "";
      synopsis = "Logging effect to plug into the simple-effects framework";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iso8601-time" or (errorHandler.buildDepError "iso8601-time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."simple-effects" or (errorHandler.buildDepError "simple-effects"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."string-conv" or (errorHandler.buildDepError "string-conv"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "logging-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."logging" or (errorHandler.buildDepError "logging"))
            (hsPkgs."simple-effects" or (errorHandler.buildDepError "simple-effects"))
            ];
          buildable = true;
          };
        };
      };
    }
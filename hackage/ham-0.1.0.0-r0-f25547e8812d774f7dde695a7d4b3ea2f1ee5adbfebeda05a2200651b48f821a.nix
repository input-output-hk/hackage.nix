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
      identifier = { name = "ham"; version = "0.1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2018-2020";
      maintainer = "km6thj@goschs.de";
      author = "KM6THJ";
      homepage = "https://github.com/km6thj/hamlog";
      url = "";
      synopsis = "";
      description = "Please see README.org";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."serialport" or (errorHandler.buildDepError "serialport"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      exes = {
        "hamlog" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ham" or (errorHandler.buildDepError "ham"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."brick" or (errorHandler.buildDepError "brick"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            ];
          buildable = true;
          };
        };
      tests = {
        "ham-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ham" or (errorHandler.buildDepError "ham"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }
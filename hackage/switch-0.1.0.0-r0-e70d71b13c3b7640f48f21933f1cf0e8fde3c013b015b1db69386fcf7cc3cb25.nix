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
      specVersion = "1.12";
      identifier = { name = "switch"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Michael Szvetits";
      maintainer = "typedbyte@qualified.name";
      author = "Michael Szvetits";
      homepage = "https://github.com/typedbyte/switch#readme";
      url = "";
      synopsis = "Nintendo Switch Controller Library";
      description = "Please see the README on GitHub at <https://github.com/typedbyte/switch#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
          ];
        buildable = true;
        };
      tests = {
        "cube" = {
          depends = [
            (hsPkgs."GPipe" or (errorHandler.buildDepError "GPipe"))
            (hsPkgs."GPipe-GLFW" or (errorHandler.buildDepError "GPipe-GLFW"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."switch" or (errorHandler.buildDepError "switch"))
            ];
          buildable = true;
          };
        "leftJoyCon" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
            (hsPkgs."switch" or (errorHandler.buildDepError "switch"))
            ];
          buildable = true;
          };
        "proController" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
            (hsPkgs."switch" or (errorHandler.buildDepError "switch"))
            ];
          buildable = true;
          };
        "rightJoyCon" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hidapi" or (errorHandler.buildDepError "hidapi"))
            (hsPkgs."switch" or (errorHandler.buildDepError "switch"))
            ];
          buildable = true;
          };
        };
      };
    }
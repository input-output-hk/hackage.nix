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
      identifier = { name = "call-plantuml"; version = "0.0.1"; };
      license = "MIT";
      copyright = "2022 Marcellus Siegburg";
      maintainer = "marcellus.siegburg@uni-due.de";
      author = "Marcellus Siegburg";
      homepage = "https://github.com/marcellussiegburg/call-plantuml#readme";
      url = "";
      synopsis = "A simple library to call PlantUML given a diagram specification";
      description = "Please see the README on GitHub at <https://github.com/marcellussiegburg/call-plantuml#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      tests = {
        "call-plantuml-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."call-plantuml" or (errorHandler.buildDepError "call-plantuml"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }
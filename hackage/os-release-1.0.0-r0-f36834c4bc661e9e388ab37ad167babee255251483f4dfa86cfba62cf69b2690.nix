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
    flags = { devel = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "os-release"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2014 Jan Matějka <yac@blesmrt.net>";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Jan Matějka";
      homepage = "https://github.com/yaccz/os-release";
      url = "";
      synopsis = "/etc/os-release helpers";
      description = "\\/etc\\/os-release helpers as per the freedesktop spec: https://www.freedesktop.org/software/systemd/man/os-release.html";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-megaparsec" or (errorHandler.buildDepError "hspec-megaparsec"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."os-release" or (errorHandler.buildDepError "os-release"))
            ];
          buildable = true;
          };
        };
      };
    }
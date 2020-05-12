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
      identifier = { name = "yesod-static-remote"; version = "0.0.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2019 Tom Sydney Kerckhove";
      maintainer = "syd@cs-syd.eu";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/yesod-static-remote#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/NorfairKing/remote-static#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
          ];
        buildable = true;
        };
      tests = {
        "remote-static-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-static" or (errorHandler.buildDepError "yesod-static"))
            (hsPkgs."yesod-static-remote" or (errorHandler.buildDepError "yesod-static-remote"))
            ];
          buildable = true;
          };
        };
      };
    }
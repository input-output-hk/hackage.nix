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
      identifier = { name = "curl-runnings"; version = "0.15.0"; };
      license = "MIT";
      copyright = "2018 Avi Press";
      maintainer = "mail@avi.press";
      author = "Avi Press";
      homepage = "https://github.com/aviaviavi/curl-runnings#readme";
      url = "";
      synopsis = "A framework for declaratively writing curl based API tests";
      description = "Please see the README on Github at <https://github.com/aviaviavi/curl-runnings#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "curl-runnings" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."curl-runnings" or (errorHandler.buildDepError "curl-runnings"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ];
          buildable = true;
          };
        };
      tests = {
        "curl-runnings-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."curl-runnings" or (errorHandler.buildDepError "curl-runnings"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (errorHandler.buildDepError "hspec-expectations"))
            (hsPkgs."raw-strings-qq" or (errorHandler.buildDepError "raw-strings-qq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }
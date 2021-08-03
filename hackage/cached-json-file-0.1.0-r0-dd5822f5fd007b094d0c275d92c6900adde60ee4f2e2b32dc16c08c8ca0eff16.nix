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
      specVersion = "2.0";
      identifier = { name = "cached-json-file"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2021  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/cached-json-file";
      url = "";
      synopsis = "Locally cache a json file obtained by http";
      description = "A small library for caching a slow-changing remote json file in\na specified directory (under \"~\\/.cache\\/\").  When the json is requested\nand the cache file is still fresh enough it is read directly from\nthe local cache, otherwise the cached file is refreshed first.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          ];
        buildable = true;
        };
      };
    }
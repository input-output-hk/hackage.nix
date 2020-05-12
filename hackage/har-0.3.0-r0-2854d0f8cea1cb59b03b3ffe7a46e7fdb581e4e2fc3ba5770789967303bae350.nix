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
      identifier = { name = "har"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "@2015-2017 Haisheng Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng.Wu";
      homepage = "https://github.com/freizl/har";
      url = "";
      synopsis = "HAR spec in Haskell";
      description = "\nData type of HAR spec: <https://dvcs.w3.org/hg/webperf/raw-file/tip/specs/HAR/Overview.html>";
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
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }
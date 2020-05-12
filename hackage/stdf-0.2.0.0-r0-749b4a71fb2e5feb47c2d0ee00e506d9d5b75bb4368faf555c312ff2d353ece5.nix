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
      identifier = { name = "stdf"; version = "0.2.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "415fox@gmail.com";
      author = "Michael Fox";
      homepage = "https://github.com/gitfoxi/Stdf";
      url = "";
      synopsis = "Parse Structured Test Data Format (STDF)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix-time" or (errorHandler.buildDepError "unix-time"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "StdfToJson" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."stdf" or (errorHandler.buildDepError "stdf"))
            ];
          buildable = true;
          };
        "WaferMap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."stdf" or (errorHandler.buildDepError "stdf"))
            ];
          buildable = true;
          };
        };
      };
    }
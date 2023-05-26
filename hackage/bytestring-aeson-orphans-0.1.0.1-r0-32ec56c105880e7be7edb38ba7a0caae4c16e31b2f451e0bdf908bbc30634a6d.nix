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
      specVersion = "2.4";
      identifier = { name = "bytestring-aeson-orphans"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Obsidian Systems LLC";
      maintainer = "maintainer@obsidian.systems";
      author = "Obsidian Systems LLC";
      homepage = "https://github.com/obsidiansystems/bytestring-aeson-orphans";
      url = "";
      synopsis = "Aeson instances for ByteString, using base 64 encoding";
      description = "Encode ByteStrings as valid JSON using Aeson.  The instances provided by this\npackage use base64 encoding to ensure that the ByteString does not contain\ninvalid (for JSON) characters.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }
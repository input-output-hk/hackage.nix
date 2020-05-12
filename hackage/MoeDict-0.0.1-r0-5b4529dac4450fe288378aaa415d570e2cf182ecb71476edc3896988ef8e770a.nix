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
      specVersion = "1.6";
      identifier = { name = "MoeDict"; version = "0.0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "https://github.com/audreyt/MoeDict.hs";
      url = "";
      synopsis = "Utilities working with MoeDict.tw JSON dataset ";
      description = "Utilities working with MoeDict.tw JSON dataset ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          ];
        buildable = true;
        };
      };
    }
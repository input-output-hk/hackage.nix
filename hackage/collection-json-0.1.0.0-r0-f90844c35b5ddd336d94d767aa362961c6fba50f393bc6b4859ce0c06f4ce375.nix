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
      identifier = { name = "collection-json"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Daniel Choi";
      maintainer = "dhchoi@gmail.com";
      author = "Daniel Choi";
      homepage = "https://github.com/danchoi/collection-json.hs";
      url = "";
      synopsis = "Collection+JSON hypermedia type tools";
      description = "Collection+JSON hypermedia type tools";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }
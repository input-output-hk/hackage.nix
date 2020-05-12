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
      specVersion = "1.20";
      identifier = { name = "haskus-utils-compat"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2019";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://docs.haskus.org/";
      url = "";
      synopsis = "Compatibility modules with other external packages (ByteString, etc.)";
      description = "Compatibility modules with other external packages (ByteString, etc.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."haskus-binary" or (errorHandler.buildDepError "haskus-binary"))
          (hsPkgs."haskus-utils-data" or (errorHandler.buildDepError "haskus-utils-data"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }
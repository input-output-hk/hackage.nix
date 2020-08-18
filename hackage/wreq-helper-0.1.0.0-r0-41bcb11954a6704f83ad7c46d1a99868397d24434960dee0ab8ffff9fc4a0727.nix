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
      identifier = { name = "wreq-helper"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "lmjubuntu@gmail.com";
      author = "Li Meng Jun";
      homepage = "https://github.com/Lupino/yuntan-common/tree/master/wreq-helper#readme";
      url = "";
      synopsis = "Wreq response process";
      description = "Wreq response process.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson-result" or (errorHandler.buildDepError "aeson-result"))
          ];
        buildable = true;
        };
      };
    }
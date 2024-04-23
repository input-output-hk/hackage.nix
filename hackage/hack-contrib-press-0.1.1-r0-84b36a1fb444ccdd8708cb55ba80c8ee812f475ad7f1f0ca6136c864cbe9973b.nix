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
      specVersion = "1.2";
      identifier = { name = "hack-contrib-press"; version = "0.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "bickfordb@gmail.com";
      author = "Brandon Bickford <bickfordb@gmail.com>";
      homepage = "http://github.com/bickfordb/hack-contrib-press";
      url = "";
      synopsis = "Hack helper that renders Press templates";
      description = "Hack helper that renders Press templates";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-class" or (errorHandler.buildDepError "bytestring-class"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hack" or (errorHandler.buildDepError "hack"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."press" or (errorHandler.buildDepError "press"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
        ];
        buildable = true;
      };
    };
  }
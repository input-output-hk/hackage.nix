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
      specVersion = "2.2";
      identifier = { name = "scan-metadata"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alexey.raga@gmail.com";
      author = "alexeyraga";
      homepage = "";
      url = "";
      synopsis = "Metadata types for Albedo Scanners";
      description = "Metadata types for Albedo Scanners.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."antiope-core" or (errorHandler.buildDepError "antiope-core"))
          (hsPkgs."antiope-s3" or (errorHandler.buildDepError "antiope-s3"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."hw-aeson" or (errorHandler.buildDepError "hw-aeson"))
          (hsPkgs."hw-ip" or (errorHandler.buildDepError "hw-ip"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."thyme" or (errorHandler.buildDepError "thyme"))
          (hsPkgs."unliftio-core" or (errorHandler.buildDepError "unliftio-core"))
        ];
        buildable = true;
      };
    };
  }
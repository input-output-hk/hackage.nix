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
      identifier = { name = "trasa-form"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "goolord";
      homepage = "";
      url = "";
      synopsis = "generate forms using lucid, ditto and trasa";
      description = "Formlets library for trasa using ditto as its backend.\nAlthough trasa already has machinery for creating\ntypesafe forms, this library with ditto allow a more\ncomposable approach to form generation/validation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."cookie" or (errorHandler.buildDepError "cookie"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."quantification" or (errorHandler.buildDepError "quantification"))
          (hsPkgs."ditto" or (errorHandler.buildDepError "ditto"))
          (hsPkgs."ditto-lucid" or (errorHandler.buildDepError "ditto-lucid"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."trasa" or (errorHandler.buildDepError "trasa"))
          (hsPkgs."trasa-server" or (errorHandler.buildDepError "trasa-server"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      exes = {
        "test-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."quantification" or (errorHandler.buildDepError "quantification"))
            (hsPkgs."ditto" or (errorHandler.buildDepError "ditto"))
            (hsPkgs."ditto-lucid" or (errorHandler.buildDepError "ditto-lucid"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."trasa" or (errorHandler.buildDepError "trasa"))
            (hsPkgs."trasa-extra" or (errorHandler.buildDepError "trasa-extra"))
            (hsPkgs."trasa-form" or (errorHandler.buildDepError "trasa-form"))
            (hsPkgs."trasa-server" or (errorHandler.buildDepError "trasa-server"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = true;
        };
      };
    };
  }
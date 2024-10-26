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
      specVersion = "3.0";
      identifier = { name = "servant-hateoas"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2024 Julian Bruder";
      maintainer = "julian.bruder@outlook.com";
      author = "Julian Bruder";
      homepage = "";
      url = "";
      synopsis = "HATEOAS extension for servant";
      description = "Create Resource-Representations for your types and make your API HATEOAS-compliant. Generic Resource-construction where possible, manual where ypu want.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
        ];
        buildable = true;
      };
      tests = {
        "servant-hateoas-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-hateoas" or (errorHandler.buildDepError "servant-hateoas"))
          ];
          buildable = true;
        };
      };
    };
  }
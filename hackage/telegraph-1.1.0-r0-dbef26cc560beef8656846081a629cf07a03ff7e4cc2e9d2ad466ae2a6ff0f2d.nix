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
      identifier = { name = "telegraph"; version = "1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Poscat 2021";
      maintainer = "Poscat <poscat@mail.poscat.moe>";
      author = "Poscat";
      homepage = "https://github.com/poscat0x04/telegraph";
      url = "";
      synopsis = "Binding to the telegraph API";
      description = "Binding to the telegraph API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."in-other-words" or (errorHandler.buildDepError "in-other-words"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."deriving-aeson" or (errorHandler.buildDepError "deriving-aeson"))
          (hsPkgs."generic-data-surgery" or (errorHandler.buildDepError "generic-data-surgery"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "telegraph-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."in-other-words" or (errorHandler.buildDepError "in-other-words"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."telegraph" or (errorHandler.buildDepError "telegraph"))
          ];
          buildable = true;
        };
      };
    };
  }
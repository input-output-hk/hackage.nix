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
      identifier = { name = "uuid-crypto"; version = "1.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aethoago@141.li";
      author = "Gregor Kleen";
      homepage = "";
      url = "";
      synopsis = "Reversable and secure encoding of object ids as uuids";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cryptoids-types" or (errorHandler.buildDepError "cryptoids-types"))
          (hsPkgs."cryptoids" or (errorHandler.buildDepError "cryptoids"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }
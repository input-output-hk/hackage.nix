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
      identifier = { name = "uuid-crypto"; version = "1.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregor Kleen <aethoago@141.li>";
      author = "Gregor Kleen <aethoago@141.li>";
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
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptoids" or (errorHandler.buildDepError "cryptoids"))
          (hsPkgs."cryptoids-class" or (errorHandler.buildDepError "cryptoids-class"))
          (hsPkgs."cryptoids-types" or (errorHandler.buildDepError "cryptoids-types"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      };
    }
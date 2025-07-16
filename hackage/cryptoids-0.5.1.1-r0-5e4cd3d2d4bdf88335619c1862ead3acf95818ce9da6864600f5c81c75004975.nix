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
      specVersion = "1.12";
      identifier = { name = "cryptoids"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregor Kleen <aethoago@141.li>";
      author = "Gregor Kleen <aethoago@141.li>";
      homepage = "";
      url = "";
      synopsis = "Reversable and secure encoding of object ids as a bytestring";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptoids-class" or (errorHandler.buildDepError "cryptoids-class"))
          (hsPkgs."cryptoids-types" or (errorHandler.buildDepError "cryptoids-types"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ];
        buildable = true;
      };
    };
  }
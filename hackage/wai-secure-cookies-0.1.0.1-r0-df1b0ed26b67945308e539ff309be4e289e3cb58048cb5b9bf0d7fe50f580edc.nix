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
      identifier = { name = "wai-secure-cookies"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "© حبيب الامين‪ 2017";
      maintainer = "ha.alamin@gmail.com";
      author = "Habib Alamin";
      homepage = "https://github.com/habibalamin/wai-secure-cookies";
      url = "";
      synopsis = "";
      description = "WAI middleware to automatically encrypt and sign cookies";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
        buildable = true;
        };
      exes = {
        "waicookie-genkey" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            ];
          buildable = true;
          };
        };
      };
    }
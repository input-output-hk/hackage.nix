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
      identifier = { name = "vault-tool-server"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "mutantlemon@gmail.com";
      author = "Bit Connor";
      homepage = "https://github.com/bitc/hs-vault-tool";
      url = "";
      synopsis = "Utility library for spawning a HashiCorp Vault process";
      description = "Utility library for spawning a HashiCorp Vault process";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vault-tool" or (errorHandler.buildDepError "vault-tool"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vault-tool" or (errorHandler.buildDepError "vault-tool"))
            (hsPkgs."vault-tool-server" or (errorHandler.buildDepError "vault-tool-server"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ];
          buildable = true;
          };
        };
      };
    }
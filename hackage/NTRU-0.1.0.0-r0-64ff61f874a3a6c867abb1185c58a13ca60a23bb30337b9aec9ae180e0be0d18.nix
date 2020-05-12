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
      specVersion = "1.8";
      identifier = { name = "NTRU"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "tlevine@cyberpointllc.com";
      author = "Theo Levine";
      homepage = "";
      url = "";
      synopsis = "NTRU Cryptographic Library            ";
      description = "A Haskell implementation of the NTRU cryptographic system, following the IEEE Standard Specification for Public Key Crpytographic Techniques Based on Hard Problems over Lattices ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."polynomial" or (errorHandler.buildDepError "polynomial"))
          (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }
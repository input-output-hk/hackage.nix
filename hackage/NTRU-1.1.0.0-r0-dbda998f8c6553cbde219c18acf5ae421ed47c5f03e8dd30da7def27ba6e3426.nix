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
      identifier = { name = "NTRU"; version = "1.1.0.0"; };
      license = "LicenseRef-GPL";
      copyright = "2014, CyberPoint International, LLC";
      maintainer = "opensource@cyberpointllc.com, andrew.lelechenko@gmail.com";
      author = "Theo Levine, Tom Cornelius, Elizabeth Hughes, CyberPoint International LLC.";
      homepage = "";
      url = "";
      synopsis = "NTRU Cryptography";
      description = "A Haskell implementation of the NTRU cryptographic system, following the IEEE Standard Specification for Public Key Cryptographic Techniques Based on Hard Problems over Lattices (IEEE Std 1363.1-2008)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."crypto-api" or (errorHandler.buildDepError "crypto-api"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."poly" or (errorHandler.buildDepError "poly"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
        ];
        buildable = true;
      };
    };
  }
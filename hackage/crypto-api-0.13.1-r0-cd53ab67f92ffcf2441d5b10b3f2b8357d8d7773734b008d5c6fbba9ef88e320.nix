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
    flags = { all_cpolys = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "crypto-api"; version = "0.13.1"; };
      license = "BSD-3-Clause";
      copyright = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      maintainer = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>, Francisco Blas Izquierdo Riera (klondike)";
      homepage = "https://github.com/TomMD/crypto-api";
      url = "";
      synopsis = "A generic interface for cryptographic operations";
      description = "A generic interface for cryptographic operations (hashes, ciphers, randomness).\nMaintainers of hash and cipher implementations are\nencouraged to add instances for the classes defined\nin Crypto.Classes.  Crypto users are similarly\nencouraged to use the interfaces defined in the Classes\nmodule.\nAny concepts or functions of general use to more than\none cryptographic algorithm (ex: padding) is within\nscope of this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (flags.all_cpolys) (hsPkgs."array" or (errorHandler.buildDepError "array"));
        buildable = true;
        };
      };
    }
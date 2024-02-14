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
    flags = { pkg-config = true; xffi = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "botan-bindings"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leo@apotheca.io";
      author = "Leo D.";
      homepage = "";
      url = "";
      synopsis = "Raw Botan bindings";
      description = "Welcome to botan-bindings\n\nRaw bindings to the [Botan](https://botan.randombit.net/) cryptography library.\n\n> Botan's goal is to be the best option for cryptography in C++ by offering the\n> tools necessary to implement a range of practical systems, such as TLS protocol,\n> X.509 certificates, modern AEAD ciphers, PKCS#11 and TPM hardware support,\n> password hashing, and post quantum crypto schemes.\n\nFor more information, see the [README on Github](https://github.com/apotheca/botan)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (!flags.pkg-config) (pkgs."botan-3" or (errorHandler.sysDepError "botan-3"));
        pkgconfig = (pkgs.lib).optional (flags.pkg-config) (pkgconfPkgs."botan-3" or (errorHandler.pkgConfDepError "botan-3"));
        buildable = true;
        };
      };
    }
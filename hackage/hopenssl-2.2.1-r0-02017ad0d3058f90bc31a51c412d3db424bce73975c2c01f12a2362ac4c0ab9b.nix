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
      identifier = { name = "hopenssl"; version = "2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2004-2017 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons, Markus Rothe";
      homepage = "http://github.com/peti/hopenssl";
      url = "";
      synopsis = "FFI Bindings to OpenSSL's EVP Digest Interface";
      description = "Foreign-function bindings to the\n<http://www.openssl.org/ OpenSSL library>. Currently\nprovides access to the messages digests MD5, DSS, DSS1,\nRIPEMD160, and various SHA variants through the EVP\ndigest interface.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "check-low-level-digest-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "check-high-level-digest-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
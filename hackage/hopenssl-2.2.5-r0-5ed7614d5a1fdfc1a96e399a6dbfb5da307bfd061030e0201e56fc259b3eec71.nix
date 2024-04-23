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
    flags = { link-libz = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hopenssl"; version = "2.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2004-2018 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons, Markus Rothe";
      homepage = "https://github.com/peti/hopenssl";
      url = "";
      synopsis = "FFI Bindings to OpenSSL's EVP Digest Interface";
      description = "Foreign-function bindings to the <http://www.openssl.org/ OpenSSL library>.\nCurrently provides access to the messages digests MD5, DSS, DSS1,\nRIPEMD160, and various SHA variants through the EVP digest interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [
          (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
        ] ++ pkgs.lib.optional (flags.link-libz) (pkgs."z" or (errorHandler.sysDepError "z"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "check-low-level-digest-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
          ];
          buildable = true;
        };
        "check-high-level-digest-api" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hopenssl" or (errorHandler.buildDepError "hopenssl"))
          ];
          buildable = true;
        };
      };
    };
  }
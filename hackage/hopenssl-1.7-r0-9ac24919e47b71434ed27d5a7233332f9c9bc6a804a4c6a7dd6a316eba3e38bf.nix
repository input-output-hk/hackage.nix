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
      specVersion = "1.6";
      identifier = { name = "hopenssl"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2004-2013 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>,\nJesper Louis Andersen <jesper.louis.andersen@gmail.com>,\nMarkus Rothe <markus@unixforces.net>";
      homepage = "http://github.com/peti/hopenssl";
      url = "";
      synopsis = "FFI bindings to OpenSSL's EVP digest interface";
      description = "Foreign-function bindings to the OpenSSL library\n<http://www.openssl.org/>. Currently provides\naccess to the messages digests MD5, DSS, DSS1,\nRIPEMD160, and several variants of SHA through\nthe EVP digest interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ];
        buildable = true;
        };
      };
    }
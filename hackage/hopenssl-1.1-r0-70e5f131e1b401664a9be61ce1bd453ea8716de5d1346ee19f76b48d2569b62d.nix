{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hopenssl";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>";
      homepage = "http://cryp.to/hopenssl/";
      url = "";
      synopsis = "FFI bindings to OpenSSL's EVP digest interface";
      description = "Foreign-function bindings to the OpenSSL library\n<http://www.openssl.org/>. Currently provides\naccess to the messages digests MD2, MD5, SHA,\nSHA1, DSS, DSS1, MDC2, and RIPEMD160 through the\nEVP digest interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
        libs = [ (pkgs."crypto") ];
      };
    };
  }
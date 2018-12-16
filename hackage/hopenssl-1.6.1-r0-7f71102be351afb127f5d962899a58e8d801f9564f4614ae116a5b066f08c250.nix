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
      specVersion = "1.6";
      identifier = {
        name = "hopenssl";
        version = "1.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2004-2011 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>,\nJesper Louis Andersen <jesper.louis.andersen@gmail.com>,\nMarkus Rothe <markus@unixforces.net>";
      homepage = "http://gitorious.org/hopenssl";
      url = "";
      synopsis = "FFI bindings to OpenSSL's EVP digest interface";
      description = "Foreign-function bindings to the OpenSSL library\n<http://www.openssl.org/>. Currently provides\naccess to the messages digests MD5, SHA, SHA1,\nDSS, DSS1, and RIPEMD160 through the EVP digest\ninterface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."crypto") ];
      };
    };
  }
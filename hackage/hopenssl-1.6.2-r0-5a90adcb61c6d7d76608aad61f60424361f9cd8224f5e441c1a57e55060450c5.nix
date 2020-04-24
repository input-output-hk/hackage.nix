{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hopenssl"; version = "1.6.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2004-2013 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>,\nJesper Louis Andersen <jesper.louis.andersen@gmail.com>,\nMarkus Rothe <markus@unixforces.net>";
      homepage = "http://github.com/peti/hopenssl";
      url = "";
      synopsis = "FFI bindings to OpenSSL's EVP digest interface";
      description = "Foreign-function bindings to the OpenSSL library\n<http://www.openssl.org/>. Currently provides\naccess to the messages digests MD5, SHA, SHA1,\nDSS, DSS1, and RIPEMD160 through the EVP digest\ninterface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
          ];
        buildable = true;
        };
      };
    }
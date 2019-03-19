{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { link-libz = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hopenssl"; version = "2.2.4"; };
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
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
        libs = [
          (pkgs."crypto")
          ] ++ (pkgs.lib).optional (flags.link-libz) (pkgs."z");
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      tests = {
        "check-low-level-digest-api" = {
          depends = [ (hsPkgs.base) (hsPkgs.HUnit) (hsPkgs.hopenssl) ];
          };
        "check-high-level-digest-api" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.bytestring)
            (hsPkgs.hopenssl)
            ];
          };
        };
      };
    }
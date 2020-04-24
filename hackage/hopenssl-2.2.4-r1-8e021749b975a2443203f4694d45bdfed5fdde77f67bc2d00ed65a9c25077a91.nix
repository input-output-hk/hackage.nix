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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
          ] ++ (pkgs.lib).optional (flags.link-libz) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "check-low-level-digest-api" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
            ];
          buildable = true;
          };
        "check-high-level-digest-api" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
            ];
          buildable = true;
          };
        };
      };
    }
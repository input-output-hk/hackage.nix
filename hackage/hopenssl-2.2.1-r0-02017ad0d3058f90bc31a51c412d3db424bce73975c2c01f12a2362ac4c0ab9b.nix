{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."crypto" or ((hsPkgs.pkgs-errors).sysDepError "crypto"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      tests = {
        "check-low-level-digest-api" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "check-high-level-digest-api" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hopenssl" or ((hsPkgs.pkgs-errors).buildDepError "hopenssl"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }
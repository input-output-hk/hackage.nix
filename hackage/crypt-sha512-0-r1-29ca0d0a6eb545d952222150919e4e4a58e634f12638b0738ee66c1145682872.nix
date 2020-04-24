{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "crypt-sha512"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/crypt-sha512";
      url = "";
      synopsis = "Pure Haskell implelementation for GNU SHA512 crypt algorithm";
      description = "crypt() is the password encryption function.  It is based on the Data\nEncryption Standard algorithm with variations intended (among other things) to\ndiscourage use of hardware implementations of a key search.\n\nThis package provides a pure Haskell implementation of SHA512 crypt scheme.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."cryptohash-sha512" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha512"))
          ];
        buildable = true;
        };
      tests = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."crypt-sha512" or ((hsPkgs.pkgs-errors).buildDepError "crypt-sha512"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            ];
          libs = [
            (pkgs."crypt" or ((hsPkgs.pkgs-errors).sysDepError "crypt"))
            ];
          buildable = if !system.isLinux then false else true;
          };
        };
      };
    }
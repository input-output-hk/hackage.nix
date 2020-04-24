{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hkdf"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Jiri Marsicek <jiri.marsicek@gmail.com>";
      maintainer = "Jiri Marsicek <jiri.marsicek@gmail.com>";
      author = "Jiri Marsicek <jiri.marsicek@gmail.com>";
      homepage = "http://github.com/j1r1k/hkdf";
      url = "";
      synopsis = "Implementation of HKDF (RFC 5869)";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          ];
        buildable = true;
        };
      tests = {
        "hkdf-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."byteable" or ((hsPkgs.pkgs-errors).buildDepError "byteable"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
            (hsPkgs."hkdf" or ((hsPkgs.pkgs-errors).buildDepError "hkdf"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
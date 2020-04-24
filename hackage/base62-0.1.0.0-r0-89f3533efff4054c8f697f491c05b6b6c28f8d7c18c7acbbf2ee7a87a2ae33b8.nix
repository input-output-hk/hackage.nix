{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "base62"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/base62";
      url = "";
      synopsis = "Base62 encoding and decoding";
      description = "Encode and decode using the base62 encoding scheme.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
          (hsPkgs."natural-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "natural-arithmetic"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."small-bytearray-builder" or ((hsPkgs.pkgs-errors).buildDepError "small-bytearray-builder"))
          (hsPkgs."wide-word" or ((hsPkgs.pkgs-errors).buildDepError "wide-word"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base62" or ((hsPkgs.pkgs-errors).buildDepError "base62"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."wide-word" or ((hsPkgs.pkgs-errors).buildDepError "wide-word"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."base62" or ((hsPkgs.pkgs-errors).buildDepError "base62"))
            (hsPkgs."wide-word" or ((hsPkgs.pkgs-errors).buildDepError "wide-word"))
            ];
          buildable = true;
          };
        };
      };
    }
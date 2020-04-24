{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "uuid-bytes"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "zacharyachurchill@gmail.com";
      author = "Zachary Churchill";
      homepage = "";
      url = "";
      synopsis = "UUID parsing using byteverse packages";
      description = "This packages provides `bytesmith` parsers and `byteslice` encoders for 128bit UUIDs in hexadecimal format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wide-word" or ((hsPkgs.pkgs-errors).buildDepError "wide-word"))
          (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
          (hsPkgs."bytesmith" or ((hsPkgs.pkgs-errors).buildDepError "bytesmith"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."small-bytearray-builder" or ((hsPkgs.pkgs-errors).buildDepError "small-bytearray-builder"))
          (hsPkgs."natural-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "natural-arithmetic"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."uuid-bytes" or ((hsPkgs.pkgs-errors).buildDepError "uuid-bytes"))
            (hsPkgs."wide-word" or ((hsPkgs.pkgs-errors).buildDepError "wide-word"))
            (hsPkgs."byteslice" or ((hsPkgs.pkgs-errors).buildDepError "byteslice"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."natural-arithmetic" or ((hsPkgs.pkgs-errors).buildDepError "natural-arithmetic"))
            ];
          buildable = true;
          };
        };
      };
    }
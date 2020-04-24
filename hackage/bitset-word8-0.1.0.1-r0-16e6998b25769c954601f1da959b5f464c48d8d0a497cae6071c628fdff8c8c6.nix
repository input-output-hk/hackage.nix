{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bitset-word8"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/bitset-word8#readme";
      url = "";
      synopsis = "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP";
      description = "This package is intended to provide O(1) membership test on any subset of ASCII\nand Latin-1 character set in order to write efficient HTTP related parser.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-lift-instances" or ((hsPkgs.pkgs-errors).buildDepError "th-lift-instances"))
          ];
        buildable = true;
        };
      tests = {
        "bitset-word8-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."bitset-word8" or ((hsPkgs.pkgs-errors).buildDepError "bitset-word8"))
            ];
          buildable = true;
          };
        };
      };
    }
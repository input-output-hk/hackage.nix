{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bits-bytestring"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Michael Carpenter";
      maintainer = "Michael Carpenter <oldmanmike.dev@gmail.com>";
      author = "Michael Carpenter";
      homepage = "https://github.com/oldmanmike/bits-bytestring";
      url = "";
      synopsis = "Bits instance for bytestrings.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits" or ((hsPkgs.pkgs-errors).buildDepError "bits"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "bits-bytestring-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bits" or ((hsPkgs.pkgs-errors).buildDepError "bits"))
            (hsPkgs."bits-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bits-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bits-bytestring-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."bits-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bits-bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }
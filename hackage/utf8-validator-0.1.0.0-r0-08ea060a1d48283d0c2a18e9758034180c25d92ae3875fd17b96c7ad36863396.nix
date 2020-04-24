{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "utf8-validator"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Edward George";
      maintainer = "edwardgeorge@gmail.com";
      author = "Edward George";
      homepage = "https://github.com/edwardgeorge/utf8-validator#readme";
      url = "";
      synopsis = "Constant-space UTF8 validator for ByteStrings";
      description = "Constant-space UTF8 validator for ByteStrings";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "utf8-validator-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."utf8-validator" or ((hsPkgs.pkgs-errors).buildDepError "utf8-validator"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "utf8-validator-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."utf8-validator" or ((hsPkgs.pkgs-errors).buildDepError "utf8-validator"))
            ];
          buildable = true;
          };
        };
      };
    }
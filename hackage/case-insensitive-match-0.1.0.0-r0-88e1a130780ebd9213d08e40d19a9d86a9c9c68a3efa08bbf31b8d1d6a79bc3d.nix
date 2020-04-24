{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "case-insensitive-match"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Michael Hatfield";
      maintainer = "github@michael-hatfield.com";
      author = "Michael Hatfield";
      homepage = "https://github.com/mikehat/random-strings";
      url = "";
      synopsis = "A simplified, faster way to do case-insensitive matching.";
      description = "A way to do case-insensitive string matching and comparison with less\noverhead and more speed. The 'Data.CaseInsensitive.Eq' module offers\nsimplified syntax and optimized instances for 'ByteString', 'String' and\n'Text'. In particular, the 'ByteString' implementation assumes ISO-8859-1\n(8-bit) encoding and performs benchmark testing significantly faster than\nother implementations.";
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
      exes = {
        "readme-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."case-insensitive-match" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive-match"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-basics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."case-insensitive-match" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive-match"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-others" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."case-insensitive-match" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive-match"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."random-strings" or ((hsPkgs.pkgs-errors).buildDepError "random-strings"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            ];
          buildable = true;
          };
        "bench-tagsoup" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."case-insensitive-match" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive-match"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            ];
          buildable = true;
          };
        };
      };
    }
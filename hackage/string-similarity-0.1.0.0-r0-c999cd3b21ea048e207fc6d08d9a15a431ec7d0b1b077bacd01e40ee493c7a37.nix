{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "string-similarity"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton";
      homepage = "http://github.com/mwotton/string-similarity";
      url = "";
      synopsis = "longest common substring";
      description = "algorithms for finding the longest common substring in a set of documents";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."suffixtree" or ((hsPkgs.pkgs-errors).buildDepError "suffixtree"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."string-similarity" or ((hsPkgs.pkgs-errors).buildDepError "string-similarity"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-lcs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."string-similarity" or ((hsPkgs.pkgs-errors).buildDepError "string-similarity"))
            ];
          buildable = true;
          };
        };
      };
    }
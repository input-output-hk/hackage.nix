{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "OddWord"; version = "1.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2018 Robin KAY";
      maintainer = "Robin KAY <komadori@gekkou.co.uk>";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/";
      url = "";
      synopsis = "Provides a wrapper for deriving word types with fewer bits.";
      description = "Provdes the 'OddWord' type, which wraps an existing integer type and\nexposes a subset of its bits as a new narrower word type. Includes\npredefined type synonyms for all the odd sized words up to 63 bits.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "oddword-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."OddWord" or ((hsPkgs.pkgs-errors).buildDepError "OddWord"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "oddword-bench" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."OddWord" or ((hsPkgs.pkgs-errors).buildDepError "OddWord"))
            ];
          buildable = true;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "throttled-io-loop"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016 Axial Exchange";
      maintainer = "rfischer+stack@axialexchange.com";
      author = "Robert Fischer";
      homepage = "https://github.com/AxialExchange/haskell-throttled-io-loop#readme";
      url = "";
      synopsis = "Loop over an action but throttle it to a certain rate";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."natural-numbers" or ((hsPkgs.pkgs-errors).buildDepError "natural-numbers"))
          ];
        buildable = true;
        };
      tests = {
        "loop-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."throttled-io-loop" or ((hsPkgs.pkgs-errors).buildDepError "throttled-io-loop"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }
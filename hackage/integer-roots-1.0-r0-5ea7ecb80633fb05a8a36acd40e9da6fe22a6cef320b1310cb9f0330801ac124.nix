{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "integer-roots"; version = "1.0"; };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer, 2016-2020 Andrew Lelechenko.";
      maintainer = "Andrew Lelechenko andrew dot lelechenko at gmail dot com";
      author = "Daniel Fischer, Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/integer-roots";
      url = "";
      synopsis = "Integer roots and perfect powers";
      description = "Calculating integer roots and testing perfect powers of arbitrary precision. Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          ];
        buildable = true;
        };
      tests = {
        "integer-roots-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."integer-roots" or ((hsPkgs.pkgs-errors).buildDepError "integer-roots"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            ];
          buildable = true;
          };
        "integer-roots-doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = false;
          };
        };
      };
    }
{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "setoid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Global Access Internet Services GmbH";
      maintainer = "kerestey@global.de";
      author = "Pavlo Kerestey";
      homepage = "";
      url = "";
      synopsis = "A Haskell implementation of setoid";
      description = "Setoid (<https://en.wikipedia.org/wiki/Setoid>) is a set equipped with an equivalence relation. Setoid is a useful data structure in cases where equivalence is chosen not to be equality. One can use it to influence the memberships of the elements more strictly, as opposed to sets, and run computations on unions when conflicts between elements are found.\nYou can find more deatails in `Data.Setoid`";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "setoid-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."setoid" or ((hsPkgs.pkgs-errors).buildDepError "setoid"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-discover" or ((hsPkgs.pkgs-errors).buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
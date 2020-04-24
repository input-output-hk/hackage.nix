{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "typerep-map"; version = "0.3.3.0"; };
      license = "MPL-2.0";
      copyright = "2017-2020 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Veronika Romashkina, Vladislav Zavialov, Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/typerep-map";
      url = "";
      synopsis = "Efficient implementation of a dependent map with types as keys";
      description = "A dependent map from type representations to values of these types.\n\nHere is an illustration of such a map:\n\n>     TMap\n> ---------------\n>  Int  -> 5\n>  Bool -> True\n>  Char -> 'x'\n\nIn addition to @TMap@, we provide @TypeRepMap@ parametrized by a\n@vinyl@-style interpretation. This data structure is equivalent to @DMap\nTypeRep@, but with significantly more efficient lookups.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      sublibs = {
        "typerep-extra-impls" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            ];
          buildable = true;
          };
        };
      tests = {
        "typerep-map-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hspec-hedgehog"))
            (hsPkgs."typerep-map" or ((hsPkgs.pkgs-errors).buildDepError "typerep-map"))
            (hsPkgs."typerep-extra-impls" or ((hsPkgs.pkgs-errors).buildDepError "typerep-extra-impls"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "typerep-map-benchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."dependent-map" or ((hsPkgs.pkgs-errors).buildDepError "dependent-map"))
            (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
            (hsPkgs."ghc-typelits-knownnat" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."typerep-map" or ((hsPkgs.pkgs-errors).buildDepError "typerep-map"))
            (hsPkgs."typerep-extra-impls" or ((hsPkgs.pkgs-errors).buildDepError "typerep-extra-impls"))
            ];
          buildable = true;
          };
        };
      };
    }
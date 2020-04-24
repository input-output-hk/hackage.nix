{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fadno"; version = "1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "spopejoy@panix.com";
      author = "Stuart Popejoy";
      homepage = "http://github.com/slpopejoy/fadno";
      url = "";
      synopsis = "Minimal library for music generation and notation";
      description = "Provides the Note type and HasNote class with polymorphic pitch and duration representations,\nmetering, barring and time signature utilities, plus midi and MusicXML support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Decimal" or ((hsPkgs.pkgs-errors).buildDepError "Decimal"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."event-list" or ((hsPkgs.pkgs-errors).buildDepError "event-list"))
          (hsPkgs."fadno-braids" or ((hsPkgs.pkgs-errors).buildDepError "fadno-braids"))
          (hsPkgs."fadno-xml" or ((hsPkgs.pkgs-errors).buildDepError "fadno-xml"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."midi" or ((hsPkgs.pkgs-errors).buildDepError "midi"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."fadno" or ((hsPkgs.pkgs-errors).buildDepError "fadno"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-contrib" or ((hsPkgs.pkgs-errors).buildDepError "hspec-contrib"))
            ];
          buildable = true;
          };
        };
      };
    }
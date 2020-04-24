{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      base3 = false;
      driver = false;
      no-lib = false;
      test = false;
      coverage = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "NaturalSort"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Joachim Fasting 2008-2010";
      maintainer = "Joachim Fasting <joachim.fasting@gmail.com>";
      author = "";
      homepage = "http://github.com/joachifm/natsort";
      url = "";
      synopsis = "Natural sorting for strings";
      description = "A library for sorting strings \"naturally\", i.e. taking numerical\nvalues into account when comparing textual inputs.\n\nE.g., \"1\" < \"10\", and \"10 bottles of beer\" < \"100 bottles of beer\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = if flags.no-lib || flags.test then false else true;
        };
      exes = {
        "nsort" = {
          depends = [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.test || !flags.driver && !flags.no-lib
            then false
            else true;
          };
        "test" = {
          depends = [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            ] ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.test then false else true;
          };
        };
      };
    }
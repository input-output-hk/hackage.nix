{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vinyl-generics"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Gagandeep Bhatia";
      maintainer = "gagandeepbhatia.in@gmail.com";
      author = "Gagandeep Bhatia";
      homepage = "https://github.com/VinylRecords/vinyl-generics";
      url = "";
      synopsis = "Convert plain records to vinyl (and vice versa), generically.";
      description = "Convert plain records to @vinyl@ and vice versa, via @GHC.Generics@ and @generics-sop@/@records-sop@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."records-sop" or ((hsPkgs.pkgs-errors).buildDepError "records-sop"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vinyl-generics" or ((hsPkgs.pkgs-errors).buildDepError "vinyl-generics"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-core" or ((hsPkgs.pkgs-errors).buildDepError "hspec-core"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
            (hsPkgs."records-sop" or ((hsPkgs.pkgs-errors).buildDepError "records-sop"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }
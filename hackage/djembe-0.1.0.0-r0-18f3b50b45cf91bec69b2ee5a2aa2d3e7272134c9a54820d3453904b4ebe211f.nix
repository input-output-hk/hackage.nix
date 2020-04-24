{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "djembe"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2015 Reed Rosenbluth";
      maintainer = "Reed.Rosenbluth@gmail.com";
      author = "Reed Rosenbluth";
      homepage = "";
      url = "";
      synopsis = "Hit drums with haskell";
      description = "A simple DSL for composing drum beats in haskell.\nDjembe uses the system MIDI device to play these beats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."hmidi" or ((hsPkgs.pkgs-errors).buildDepError "hmidi"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "djembe-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."djembe" or ((hsPkgs.pkgs-errors).buildDepError "djembe"))
            ];
          buildable = true;
          };
        };
      };
    }
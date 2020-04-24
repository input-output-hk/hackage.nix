{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "xsha1"; version = "0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alex Kropivny <alex.kropivny@gmail.com>";
      author = "Alex Kropivny <alex.kropivny@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "cryptanalysis of Blizzard's broken SHA-1 implementation.";
      description = "Caution: XSHA1 is weak, and should not be used as a hash.\n\nXSHA1 is used in password and CD key authentication in older Blizzard games\n(Starcraft, Diablo 2) among other things. The fact that it's cryptographically\nweak has been known for years: this is a public analysis of the weakness. The\ngoal is to determine risk posed to users, and find safeguards if possible.\n\n\nThe code is geared for rapid interactive development with GHCI. Excuse the lax conventions.\n\nData.Digest.* implements and explores XSHA1, while Data.Codec.* contains applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          ];
        buildable = true;
        };
      };
    }
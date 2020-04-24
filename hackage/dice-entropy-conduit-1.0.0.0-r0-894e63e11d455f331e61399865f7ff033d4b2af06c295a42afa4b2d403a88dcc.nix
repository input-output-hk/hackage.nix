{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dice-entropy-conduit"; version = "1.0.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "Peter Robinson 2014";
      maintainer = "peter.robinson@monoid.at";
      author = "Peter Robinson <peter.robinson@monoid.at>";
      homepage = "http://monoid.at/code";
      url = "";
      synopsis = "Cryptographically secure n-sided dice via rejection sampling.";
      description = "This library uses rejection sampling to provide cryptographically secure\n@n@-sided dice rolls and random sampling (within a given range).\nThe number of used random bits is close to the information-theoretic optimal\nbound.\n\nThe API provides a conduit interface.\nSee module \"System.Random.Dice\" for a more detailed description.\n\nFeedback is welcome!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "Main" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            ];
          buildable = true;
          };
        };
      };
    }
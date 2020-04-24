{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "dequeue"; version = "0.1.12"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2015 Henry Bucklow";
      maintainer = "Henry Bucklow <henry@elsie.org.uk>";
      author = "Henry Bucklow";
      homepage = "";
      url = "";
      synopsis = "A typeclass and an implementation for double-ended queues.";
      description = "A typeclass for double-ended queues, and an implementation of Banker's\nDequeues, as described in Chris Okasaki's Purely Functional Data\nStructures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      tests = {
        "dequeue-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."dequeue" or ((hsPkgs.pkgs-errors).buildDepError "dequeue"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."cabal-test-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "cabal-test-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
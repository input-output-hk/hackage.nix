{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "justified-containers"; version = "0.2.0.0"; };
      license = "BSD-2-Clause";
      copyright = "2017 Matt Noonan";
      maintainer = "matt.noonan@gmail.com";
      author = "Matt Noonan";
      homepage = "https://github.com/matt-noonan/justified-containers";
      url = "";
      synopsis = "Keyed container types with type-checked proofs of key presence.";
      description = "This package contains wrappers around standard container types,\nthat provide guarantees about the presence of keys within the\ncontainer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."roles" or ((hsPkgs.pkgs-errors).buildDepError "roles"))
          ];
        buildable = true;
        };
      tests = {
        "justified-containers-spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."justified-containers" or ((hsPkgs.pkgs-errors).buildDepError "justified-containers"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."should-not-typecheck" or ((hsPkgs.pkgs-errors).buildDepError "should-not-typecheck"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        };
      };
    }
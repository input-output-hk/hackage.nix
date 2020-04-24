{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "smallcheck-laws"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "j@dannynavarro.net";
      author = "Danny Navarro";
      homepage = "";
      url = "";
      synopsis = "SmallCheck properties for standard type classes";
      description = "Automatic `smallcheck` properties and `tasty` runners for:\n\n- Monoid laws.\n- Functor laws.\n- Applicative laws.\n- Monad laws.\n\nUse the @<https://hackage.haskell.org/package/tasty Tasty>@ modules for\npreassembled tasty runners, your data types need to be instances of\n@<https://hackage.haskell.org/package/smallcheck-1.1.1/docs/Test-SmallCheck-Series.html#t:Serial Serial>@.\nFor more granular control on how the\n@<https://hackage.haskell.org/package/smallcheck SmallCheck>@\n@<https://hackage.haskell.org/package/smallcheck-1.1.1/docs/Test-SmallCheck-Series.html#t:Series Series>@\nare created use the modules under @Test.SmallCheck.Laws@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
          (hsPkgs."smallcheck-series" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck-series"))
          (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
          (hsPkgs."tasty-smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-smallcheck"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"));
        buildable = true;
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."smallcheck-laws" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck-laws"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.8") (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"));
          buildable = true;
          };
        };
      };
    }
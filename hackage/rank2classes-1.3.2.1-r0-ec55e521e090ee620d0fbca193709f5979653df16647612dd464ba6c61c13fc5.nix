{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use-template-haskell = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rank2classes"; version = "1.3.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Mario Blažević";
      maintainer = "Mario Blažević <blamario@protonmail.com>";
      author = "Mario Blažević";
      homepage = "https://github.com/blamario/grampa/tree/master/rank2classes";
      url = "";
      synopsis = "standard type constructor class hierarchy, only with methods of rank 2 types";
      description = "A mirror image of the standard type constructor class hierarchy rooted in 'Functor', except with methods of rank 2\ntypes and class instances of kind @(k->*)->*@. The classes enable generic handling of heterogenously typed data\nstructures and other neat tricks.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest or ((hsPkgs.pkgs-errors).buildToolDepError "cabal-doctest")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          ] ++ (pkgs.lib).optional (flags.use-template-haskell) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"));
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rank2classes" or ((hsPkgs.pkgs-errors).buildDepError "rank2classes"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or ((hsPkgs.pkgs-errors).buildToolDepError "markdown-unlit")))
            ];
          buildable = true;
          };
        "TH" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."rank2classes" or ((hsPkgs.pkgs-errors).buildDepError "rank2classes"))
            (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or ((hsPkgs.pkgs-errors).buildToolDepError "markdown-unlit")))
            ];
          buildable = if !flags.use-template-haskell then false else true;
          };
        };
      };
    }
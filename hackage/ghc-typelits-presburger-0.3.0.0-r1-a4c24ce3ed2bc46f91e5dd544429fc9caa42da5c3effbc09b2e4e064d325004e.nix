{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "ghc-typelits-presburger"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 (c) Hiromi ISHII";
      maintainer = "konn.jinro _at_ gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/ghc-typelits-presburger#readme";
      url = "";
      synopsis = "Presburger Arithmetic Solver for GHC Type-level natural numbers.";
      description = "@ghc-typelits-presburger@ augments GHC type-system with Presburger\nArithmetic Solver for Type-level natural numbers.\nThis plugin only work with GHC builtin operations.\nTo work with those of @singletons@ package, use @ghc-typelits-meta@ and/or @ghc-typelits-presburger@ instead.\n\nSince 0.3.0.0, integration with <https://hackage.haskell.org/package/singletons singletons> package moves to <https://hackage.haskell.org/package/singletons-presburger singletons-presburger>.\n\nYou can use by adding this package to @build-depends@ and add the following pragma\nto the head of .hs files:\n\n\n> OPTIONS_GHC -fplugin GHC.TypeLits.Presburger";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or ((hsPkgs.pkgs-errors).buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "simple-arith-core" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."equational-reasoning" or ((hsPkgs.pkgs-errors).buildDepError "equational-reasoning"))
            (hsPkgs."ghc-typelits-presburger" or ((hsPkgs.pkgs-errors).buildDepError "ghc-typelits-presburger"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      };
    }
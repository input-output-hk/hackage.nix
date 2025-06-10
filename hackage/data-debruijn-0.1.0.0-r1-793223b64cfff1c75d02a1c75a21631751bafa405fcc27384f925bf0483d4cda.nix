{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { safe = false; th-as-word64 = false; env-as-skew-list = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "data-debruijn"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2023-2025 (c) Wen Kokke\n2025 (c) April Gonçalves\n2025 (c) Well-Typed LLC";
      maintainer = "wenkokke@users.noreply.github.com";
      author = "Wen Kokke";
      homepage = "";
      url = "";
      synopsis = "Fast and safe implementation of common compiler machinery.";
      description = "This package provides a safe interface to optimised implementations of common\nmachinery used in compilers and type checkers.\n\n[Type-Level Naturals]:\n    \"Data.Type.Nat\"\n\n    \"Data.Type.Nat.Singleton\"\n\n[DeBruijn Indexes]\n    \"Data.DeBruijn.Index\"\n\n[Thinnings]\n    \"Data.DeBruijn.Thinning\"\n\n[Environments]\n    \"Data.DeBruijn.Environment\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."data-debruijn".components.sublibs.typenats or (errorHandler.buildDepError "data-debruijn:typenats"))
        ] ++ (if flags.safe
          then [
            (hsPkgs."data-debruijn".components.sublibs.safe or (errorHandler.buildDepError "data-debruijn:safe"))
          ]
          else [
            (hsPkgs."data-debruijn".components.sublibs.fast or (errorHandler.buildDepError "data-debruijn:fast"))
          ]);
        buildable = true;
      };
      sublibs = {
        "typenats" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
        "fast" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-debruijn".components.sublibs.typenats or (errorHandler.buildDepError "data-debruijn:typenats"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ] ++ (if flags.th-as-word64
            then [
              (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            ]
            else [
              (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
              (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            ])) ++ (if flags.env-as-skew-list
            then [
              (hsPkgs."skew-list" or (errorHandler.buildDepError "skew-list"))
            ]
            else [
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]);
          buildable = true;
        };
        "safe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-debruijn".components.sublibs.fast or (errorHandler.buildDepError "data-debruijn:fast"))
            (hsPkgs."data-debruijn".components.sublibs.typenats or (errorHandler.buildDepError "data-debruijn:typenats"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
        "arbitrary" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-debruijn".components.sublibs.fast or (errorHandler.buildDepError "data-debruijn:fast"))
            (hsPkgs."data-debruijn".components.sublibs.safe or (errorHandler.buildDepError "data-debruijn:safe"))
            (hsPkgs."data-debruijn".components.sublibs.typenats or (errorHandler.buildDepError "data-debruijn:typenats"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }
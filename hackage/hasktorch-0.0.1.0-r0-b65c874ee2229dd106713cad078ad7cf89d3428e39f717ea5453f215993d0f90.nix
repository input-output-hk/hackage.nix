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
    flags = { cuda = false; lite = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hasktorch"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sam Stites <fnz@fgvgrf.vb>, Austin Huang <nhfgvau@nyhz.zvg.rqh> - cipher:ROT13";
      author = "Hasktorch dev team";
      homepage = "https://github.com/hasktorch/hasktorch#readme";
      url = "";
      synopsis = "Torch for tensors and neural networks in Haskell";
      description = "Hasktorch is a library for tensors and neural networks in Haskell. It is an independent open source community project which leverages the core C libraries shared by Torch and PyTorch. This library leverages @cabal v2-build@ and @backpack@. *Note that this project is in early development and should only be used by contributing developers. Expect substantial changes to the library API as it evolves. Contributions and PRs are welcome (see details on github).*";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hasktorch".components.sublibs.hasktorch-cpu or (errorHandler.buildDepError "hasktorch:hasktorch-cpu"))
          (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
          (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
        ] ++ pkgs.lib.optional (flags.cuda) (hsPkgs."hasktorch".components.sublibs.hasktorch-gpu or (errorHandler.buildDepError "hasktorch:hasktorch-gpu"));
        buildable = true;
      };
      sublibs = {
        "hasktorch-cpu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
            (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hasktorch".components.sublibs.hasktorch-indef-floating or (errorHandler.buildDepError "hasktorch:hasktorch-indef-floating"))
            (hsPkgs."hasktorch".components.sublibs.hasktorch-indef-signed or (errorHandler.buildDepError "hasktorch:hasktorch-indef-signed"))
          ] ++ pkgs.lib.optional (!flags.lite) (hsPkgs."hasktorch".components.sublibs.hasktorch-indef-unsigned or (errorHandler.buildDepError "hasktorch:hasktorch-indef-unsigned"));
          buildable = true;
        };
        "hasktorch-gpu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
            (hsPkgs."hasktorch-ffi-th" or (errorHandler.buildDepError "hasktorch-ffi-th"))
            (hsPkgs."hasktorch-types-th" or (errorHandler.buildDepError "hasktorch-types-th"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hasktorch".components.sublibs.hasktorch-indef-floating or (errorHandler.buildDepError "hasktorch:hasktorch-indef-floating"))
            (hsPkgs."hasktorch".components.sublibs.hasktorch-indef-signed or (errorHandler.buildDepError "hasktorch:hasktorch-indef-signed"))
            (hsPkgs."hasktorch-ffi-thc" or (errorHandler.buildDepError "hasktorch-ffi-thc"))
            (hsPkgs."hasktorch-types-thc" or (errorHandler.buildDepError "hasktorch-types-thc"))
          ] ++ pkgs.lib.optional (!flags.lite) (hsPkgs."hasktorch".components.sublibs.hasktorch-indef-unsigned or (errorHandler.buildDepError "hasktorch:hasktorch-indef-unsigned"));
          buildable = true;
        };
        "hasktorch-indef-unsigned" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or (errorHandler.buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-indef" or (errorHandler.buildDepError "hasktorch-indef"))
          ];
          buildable = true;
        };
        "hasktorch-indef-signed" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-signatures-partial" or (errorHandler.buildDepError "hasktorch-signatures-partial"))
            (hsPkgs."hasktorch-indef" or (errorHandler.buildDepError "hasktorch-indef"))
          ];
          buildable = true;
        };
        "hasktorch-indef-floating" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch-indef" or (errorHandler.buildDepError "hasktorch-indef"))
            (hsPkgs."hasktorch-signatures-partial" or (errorHandler.buildDepError "hasktorch-signatures-partial"))
          ];
          buildable = true;
        };
      };
      exes = {
        "isdefinite-cpu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch".components.sublibs.hasktorch-cpu or (errorHandler.buildDepError "hasktorch:hasktorch-cpu"))
          ];
          buildable = true;
        };
        "isdefinite-gpu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch".components.sublibs.hasktorch-gpu or (errorHandler.buildDepError "hasktorch:hasktorch-gpu"))
          ];
          buildable = true;
        };
        "isdefinite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch" or (errorHandler.buildDepError "hasktorch"))
          ];
          buildable = true;
        };
        "memcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hasktorch" or (errorHandler.buildDepError "hasktorch"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."backprop" or (errorHandler.buildDepError "backprop"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dimensions" or (errorHandler.buildDepError "dimensions"))
            (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
            (hsPkgs."hasktorch" or (errorHandler.buildDepError "hasktorch"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."microlens-platform" or (errorHandler.buildDepError "microlens-platform"))
            (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          ];
          buildable = true;
        };
      };
    };
  }
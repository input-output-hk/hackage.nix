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
    flags = { checkmvarinvariants = false; checktvarinvariants = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "strict-checked-vars"; version = "0.2.1.0"; };
      license = "Apache-2.0";
      copyright = "2019-2023 Input Output Global Inc (IOG).";
      maintainer = "operations@iohk.io, Joris Dral";
      author = "IOG Engineering Team";
      homepage = "";
      url = "";
      synopsis = "Strict MVars and TVars with invariant checking for IO and IOSim";
      description = "Strict @MVar@ and @TVar@ interfaces with invariant checking compatible with\n[IO](https://hackage.haskell.org/package/base-4.18.0.0/docs/Prelude.html#t:IO)\n& [io-sim](https://hackage.haskell.org/package/io-sim).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
          (hsPkgs."io-classes".components.sublibs.strict-mvar or (errorHandler.buildDepError "io-classes:strict-mvar"))
          (hsPkgs."io-classes".components.sublibs.strict-stm or (errorHandler.buildDepError "io-classes:strict-stm"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
            (hsPkgs."io-sim" or (errorHandler.buildDepError "io-sim"))
            (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
            (hsPkgs."strict-checked-vars" or (errorHandler.buildDepError "strict-checked-vars"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }
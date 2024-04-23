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
    flags = { library-only = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hstox"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "© 2016-2018 iphy";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.github.io";
      url = "";
      synopsis = "A Tox protocol implementation in Haskell";
      description = "A Tox protocol implementation in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-bits" or (errorHandler.buildDepError "binary-bits"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-msgpack" or (errorHandler.buildDepError "data-msgpack"))
          (hsPkgs."data-msgpack-types" or (errorHandler.buildDepError "data-msgpack-types"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-msgpack-rpc" or (errorHandler.buildDepError "network-msgpack-rpc"))
          (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (!flags.library-only) (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"));
        buildable = true;
      };
      exes = {
        "tox-refsut" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hstox" or (errorHandler.buildDepError "hstox"))
          ];
          buildable = if flags.library-only then false else true;
        };
        "tox-spectest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hstox" or (errorHandler.buildDepError "hstox"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = if flags.library-only then false else true;
        };
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."hstox" or (errorHandler.buildDepError "hstox"))
          ];
          buildable = true;
        };
      };
    };
  }
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
      identifier = { name = "toxcore"; version = "0.2.11"; };
      license = "GPL-3.0-only";
      copyright = "© 2016-2020 The TokTok Team";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.ltd";
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
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."msgpack-binary" or (errorHandler.buildDepError "msgpack-binary"))
          (hsPkgs."msgpack-rpc-conduit" or (errorHandler.buildDepError "msgpack-rpc-conduit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      exes = {
        "toxsave-convert" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toxcore" or (errorHandler.buildDepError "toxcore"))
          ];
          buildable = if flags.library-only then false else true;
        };
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-bits" or (errorHandler.buildDepError "binary-bits"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."msgpack-binary" or (errorHandler.buildDepError "msgpack-binary"))
            (hsPkgs."msgpack-rpc-conduit" or (errorHandler.buildDepError "msgpack-rpc-conduit"))
            (hsPkgs."msgpack-types" or (errorHandler.buildDepError "msgpack-types"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."saltine" or (errorHandler.buildDepError "saltine"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."toxcore" or (errorHandler.buildDepError "toxcore"))
          ];
          buildable = true;
        };
      };
    };
  }
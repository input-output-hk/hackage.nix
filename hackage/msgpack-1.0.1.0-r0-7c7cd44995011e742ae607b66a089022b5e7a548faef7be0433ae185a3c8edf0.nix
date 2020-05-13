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
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "msgpack"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Hideyuki Tanaka 2009-2015,\n(c) Herbert Valerio Riedel 2019";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "A Haskell implementation of MessagePack";
      description = "A Haskell implementation of the <http://msgpack.org/ MessagePack> data interchange format.\nMessagePack is a binary format which aims to be compact and supports encoding a superset of the <http://json.org/ JSON> data-model.\n\n== Related Packages\n\nA JSON adapter for the <https://hackage.haskell.org/package/aeson aeson> library is provided by the <https://hackage.haskell.org/package/msgpack-aeson msgpack-aeson> package.\n\nThe <http://hackage.haskell.org/package/msgpack-rpc msgpack-rpc> package provides an implementation of the MessagePack-RPC protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."data-binary-ieee754" or (errorHandler.buildDepError "data-binary-ieee754"))
          ];
        buildable = true;
        };
      tests = {
        "msgpack-tests" = {
          depends = [
            (hsPkgs."msgpack" or (errorHandler.buildDepError "msgpack"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }
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
      specVersion = "2.2";
      identifier = { name = "binary-tagged"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "";
      url = "";
      synopsis = "Tagged binary serialisation.";
      description = "Structurally tag binary serialisation stream.\n\nSay you have:\n\nSay you have a data type\n\n@\ndata Record = Record\n\\  { _recordFields  :: HM.HashMap Text (Integer, ByteString)\n\\  , _recordEnabled :: Bool\n\\  }\n\\  deriving (Eq, Show, Generic)\n\ninstance @Binary@ Record\ninstance 'Structured' Record\n@\n\nthen you can serialise and deserialise @Record@ values with a structure tag by simply\n\n@\n'structuredEncode' record :: LBS.ByteString\n'structuredDecode' lbs    :: IO Record\n@\n\nIf structure of @Record@ changes in between, deserialisation will fail early.\n\nThe overhead is next to non-observable.\n\n@\nbenchmarking encode/Binary\ntime                 352.8 μs   (349.5 μs .. 355.9 μs)\n\nbenchmarking encode/Tagged\ntime                 350.8 μs   (349.0 μs .. 353.1 μs)\n\nbenchmarking decode/Binary\ntime                 346.8 μs   (344.7 μs .. 349.9 μs)\n\nbenchmarking decode/Tagged\ntime                 353.8 μs   (352.0 μs .. 355.8 μs)\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."structured" or (errorHandler.buildDepError "structured"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ];
        buildable = true;
        };
      tests = {
        "binary-tagged-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
            (hsPkgs."binary-tagged" or (errorHandler.buildDepError "binary-tagged"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."singleton-bool" or (errorHandler.buildDepError "singleton-bool"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "binary-tagged-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
            (hsPkgs."binary-tagged" or (errorHandler.buildDepError "binary-tagged"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }
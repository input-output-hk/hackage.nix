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
    flags = {
      aeson = true;
      bytes = true;
      binary = true;
      cereal = true;
      deepseq = true;
      hashable = true;
      quickcheck = true;
      serialise = true;
      };
    package = {
      specVersion = "1.18";
      identifier = { name = "exinst"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2018";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Dependent pairs and their instances.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.binary || flags.bytes) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ (pkgs.lib).optional (flags.bytes) (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))) ++ (pkgs.lib).optional (flags.cereal || flags.bytes) (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))) ++ (pkgs.lib).optional (flags.hashable) (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))) ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))) ++ (pkgs.lib).optionals (flags.serialise) [
          (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
          (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cborg" or (errorHandler.buildDepError "cborg"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }
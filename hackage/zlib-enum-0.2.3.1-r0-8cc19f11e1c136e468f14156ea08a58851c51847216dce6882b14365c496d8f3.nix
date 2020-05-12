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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "zlib-enum"; version = "0.2.3.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Malte Sommerkorn <malte.sommerkorn@googlemail.com>";
      author = "Paulo Tanimoto <ptanimoto@gmail.com>";
      homepage = "http://github.com/maltem/zlib-enum";
      url = "";
      synopsis = "Enumerator interface for zlib compression";
      description = "zlib-enum is a stop-gap package to provide enumeratees for\nzlib compression/decompression.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."zlib-bindings" or (errorHandler.buildDepError "zlib-bindings"))
          ];
        buildable = if flags.test then false else true;
        };
      exes = {
        "zlib-enum-test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
            (hsPkgs."zlib-bindings" or (errorHandler.buildDepError "zlib-bindings"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }
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
      specVersion = "1.10";
      identifier = { name = "multilinear-io"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Artur M. Brodzki";
      maintainer = "artur@brodzki.org";
      author = "Artur M. Brodzki";
      homepage = "https://github.com/ArturB/multilinear-io#readme";
      url = "";
      synopsis = "Input/output capability for multilinear package.";
      description = "Input/output capability for multilinear package <https://hackage.haskell.org/package/multilinear>. Supports various file formats: binary, CSV, JSON. More information available on GitHub: <https://github.com/ArturB/multilinear-io#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."cereal-vector" or (errorHandler.buildDepError "cereal-vector"))
          (hsPkgs."csv-enumerator" or (errorHandler.buildDepError "csv-enumerator"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."multilinear" or (errorHandler.buildDepError "multilinear"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      tests = {
        "multilinear-io-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."multilinear" or (errorHandler.buildDepError "multilinear"))
            (hsPkgs."multilinear-io" or (errorHandler.buildDepError "multilinear-io"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "multilinear-io-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."multilinear" or (errorHandler.buildDepError "multilinear"))
            (hsPkgs."multilinear-io" or (errorHandler.buildDepError "multilinear-io"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }
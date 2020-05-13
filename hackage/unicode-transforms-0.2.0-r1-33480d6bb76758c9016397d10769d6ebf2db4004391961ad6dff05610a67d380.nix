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
    flags = { dev = false; has-icu = false; has-llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unicode-transforms"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Harendra Kumar,\n2014–2015 Antonio Nikishaev";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "http://github.com/harendra-kumar/unicode-transforms";
      url = "";
      synopsis = "Unicode normalization";
      description = "Fast Unicode 8.0 normalization in Haskell (NFC, NFKC, NFD, NFKD).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bitarray" or (errorHandler.buildDepError "bitarray"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "extras" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
            ];
          buildable = true;
          };
        "quickcheck" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
            ] ++ (pkgs.lib).optional (flags.has-icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
          buildable = true;
          };
        "ucd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."getopt-generics" or (errorHandler.buildDepError "getopt-generics"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
            ] ++ (pkgs.lib).optional (flags.has-icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
          buildable = true;
          };
        };
      };
    }
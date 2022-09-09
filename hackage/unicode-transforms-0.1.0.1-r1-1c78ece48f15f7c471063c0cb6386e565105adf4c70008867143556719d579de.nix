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
    flags = { bench-icu = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "unicode-transforms"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Harendra Kumar";
      maintainer = "harendra.kumar@gmail.com";
      author = "Harendra Kumar";
      homepage = "http://github.com/harendra-kumar/unicode-transforms";
      url = "";
      synopsis = "Unicode transforms (normalization NFC/NFD/NFKC/NFKD)";
      description = "This is a lightweight library supporting a limited set of unicode\ntransformations (only normalizations as of now) on ByteStrings (UTF-8) and\nText without requiring any other system libraries. It is based on\nthe utf8proc C utility supporting unicode versions upto 5.1.0.\n\ntext-icu is a full featured alternative for all unicode operations but with\na dependency on the system installed icu libraries. This package aims to\nprovide an API similar to text-icu.\n\nFor more details see the README.md file.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
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
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
            ] ++ (pkgs.lib).optional (flags.bench-icu) (hsPkgs."text-icu" or (errorHandler.buildDepError "text-icu"));
          buildable = true;
          };
        };
      };
    }
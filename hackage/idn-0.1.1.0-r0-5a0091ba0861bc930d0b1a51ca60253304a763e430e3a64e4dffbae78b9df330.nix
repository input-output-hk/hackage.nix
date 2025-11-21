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
      identifier = { name = "idn"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell IDN and Punycode implementation";
      description = "Pure Haskell implementation of Internationalized Domain Names (IDN)\nfollowing IDNA2008 specification (RFC 5890-5893), including Punycode (RFC 3492).\nProvides both high-level domain name processing and low-level Punycode encoding.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."idn" or (errorHandler.buildDepError "idn"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."idn" or (errorHandler.buildDepError "idn"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
          buildable = true;
        };
      };
    };
  }
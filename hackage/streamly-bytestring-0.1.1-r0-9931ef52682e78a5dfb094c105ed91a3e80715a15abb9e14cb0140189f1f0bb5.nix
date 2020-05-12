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
      identifier = { name = "streamly-bytestring"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Sibi Prabakaran";
      maintainer = "sibi@psibi.in";
      author = "Sibi Prabakaran";
      homepage = "https://github.com/psibi/streamly-bytestring#readme";
      url = "";
      synopsis = "Library for streamly and bytestring interoperation.";
      description = "Please see the README on GitHub at <https://github.com/psibi/streamly-bytestring#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.1") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
        buildable = true;
        };
      tests = {
        "sb-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-discover" or (errorHandler.buildDepError "hspec-discover"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.1") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
          buildable = true;
          };
        };
      benchmarks = {
        "sb-benchmark" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."streamly-bytestring" or (errorHandler.buildDepError "streamly-bytestring"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.1") (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"));
          buildable = true;
          };
        };
      };
    }
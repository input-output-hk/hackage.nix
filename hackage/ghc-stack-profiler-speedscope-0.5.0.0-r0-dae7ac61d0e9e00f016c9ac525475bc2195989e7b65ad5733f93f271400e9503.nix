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
      specVersion = "3.8";
      identifier = {
        name = "ghc-stack-profiler-speedscope";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hannes@well-typed.com";
      author = "Hannes Siebenhandl, Wen Kokke, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Export a ghc-stack-profiler call-stack profile from an eventlog to speedscope";
      description = "Export a @ghc-stack-profiler@ call-stack profile from an eventlog to speedscope.\n\nFor details, see [@ghc-stack-profiler@](https://hackage.haskell.org/package/ghc-stack-profiler).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
          (hsPkgs."ghc-stack-profiler-core" or (errorHandler.buildDepError "ghc-stack-profiler-core"))
          (hsPkgs."hs-speedscope" or (errorHandler.buildDepError "hs-speedscope"))
          (hsPkgs."ipedb" or (errorHandler.buildDepError "ipedb"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "ghc-stack-profiler-speedscope" = {
          depends = [
            (hsPkgs."ghc-stack-profiler-speedscope" or (errorHandler.buildDepError "ghc-stack-profiler-speedscope"))
          ];
          buildable = true;
        };
      };
    };
  }
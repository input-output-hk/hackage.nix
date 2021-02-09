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
      identifier = { name = "vocoder-conduit"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "tilk@tilk.eu";
      author = "Marek Materzok";
      homepage = "https://github.com/tilk/vocoder";
      url = "";
      synopsis = "Phase vocoder for Conduit";
      description = "This package wraps the algorithms provided by the vocoder package\nfor use with Conduit. This allows convenient off-line and on-line frequency\ndomain signal processing, including time transformations (e.g.\nspeeding up or slowing down sounds without changing pitch).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          ];
        buildable = true;
        };
      tests = {
        "test-vocoder-conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
            (hsPkgs."vocoder-conduit" or (errorHandler.buildDepError "vocoder-conduit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-vocoder-conduit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-fftw" or (errorHandler.buildDepError "vector-fftw"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."vocoder" or (errorHandler.buildDepError "vocoder"))
            (hsPkgs."vocoder-conduit" or (errorHandler.buildDepError "vocoder-conduit"))
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            ];
          buildable = true;
          };
        };
      };
    }
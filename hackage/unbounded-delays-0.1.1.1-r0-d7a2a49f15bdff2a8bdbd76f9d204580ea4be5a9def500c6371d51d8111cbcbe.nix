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
      identifier = { name = "unbounded-delays"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2011-2020 Bas van Dijk & Roel van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <roel@lambdacube.nl>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>\nRoel van Dijk <roel@lambdacube.nl>";
      homepage = "https://github.com/basvandijk/unbounded-delays";
      url = "";
      synopsis = "Unbounded thread delays and timeouts";
      description = "The @threadDelay@ and @timeout@ functions from the @base@ library\nuse the bounded @Int@ type for specifying the delay or timeout\nperiod. This packages provides alternatives which use the\nunbounded @Integer@ type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }
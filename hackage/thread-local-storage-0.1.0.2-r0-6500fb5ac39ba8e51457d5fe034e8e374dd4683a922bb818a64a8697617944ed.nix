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
      identifier = { name = "thread-local-storage"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rrnewton@gmail.com";
      author = "Ryan Newton";
      homepage = "";
      url = "";
      synopsis = "Several options for thread-local-storage (TLS) in Haskell.";
      description = "\nThread-local storage, or TLS, is an important ingredient in many\nalgorithms and data structures.\n\nThe GHC compiler does not provide a built-in notion of TLS either\nat the IO-thread or OS thread level.  This package provides a few\ndifferent implementations of a simple TLS API.\n\nAll exported modules provide exactly the same interface with\ndifferent implementations.  Run the included criterion benchmark\nsuite to ascertain which performs the best on your platform.\n\nExample criterion benchmark data can be found here (from an Intel Ivy-Bridge i7-3770 desktop):\n<http://www.cs.indiana.edu/~rrnewton/datasets/xmen_tls_report.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "test-tls" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench-haskell-tls" = {
          depends = [
            (hsPkgs."thread-local-storage" or (errorHandler.buildDepError "thread-local-storage"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."atomic-primops" or (errorHandler.buildDepError "atomic-primops"))
          ];
          buildable = true;
        };
      };
    };
  }
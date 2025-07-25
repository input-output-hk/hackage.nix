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
    flags = { devel = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "timestats"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 EURL Tweag";
      maintainer = "facundo.dominguez@tweag.io";
      author = "Facundo Domínguez";
      homepage = "https://github.com/tweag/timestats";
      url = "";
      synopsis = "A library for profiling time in Haskell applications";
      description = "This library provides some utilities for instrumenting Haskell\napplications to collect time measures of various fragments of\ncode. This is useful to measure wall-clock time when running a\ngiven piece of Haskell code. See the README for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."timestats" or (errorHandler.buildDepError "timestats"))
          ];
          buildable = true;
        };
      };
    };
  }
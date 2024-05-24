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
      identifier = { name = "timestats"; version = "0.1.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 EURL Tweag";
      maintainer = "facundo.dominguez@tweag.io";
      author = "Facundo Domínguez";
      homepage = "https://github.com/tweag/timestats";
      url = "";
      synopsis = "A library for profiling time in Haskell applications";
      description = "";
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
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."timestats" or (errorHandler.buildDepError "timestats"))
          ];
          buildable = true;
        };
      };
    };
  }
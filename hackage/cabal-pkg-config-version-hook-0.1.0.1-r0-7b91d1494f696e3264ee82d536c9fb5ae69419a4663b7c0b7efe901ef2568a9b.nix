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
      specVersion = "2.4";
      identifier = {
        name = "cabal-pkg-config-version-hook";
        version = "0.1.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "cabal-pkg-config-version-hook contributors";
      maintainer = "info@hercules-ci.com";
      author = "Robert Hensing";
      homepage = "https://github.com/hercules-ci/hercules-ci-agent/tree/master/cabal-pkg-config-version-hook#readme";
      url = "";
      synopsis = "Make Cabal aware of pkg-config package versions";
      description = "A setup hook for Cabal that determines the compile-time version of a pkg-config package and adds CPP macros and enables flags.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          ];
        buildable = true;
        };
      };
    }
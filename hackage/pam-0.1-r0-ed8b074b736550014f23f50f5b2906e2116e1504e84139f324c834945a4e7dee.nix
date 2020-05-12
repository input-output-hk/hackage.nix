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
      specVersion = "1.2.3";
      identifier = { name = "pam"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011 Evgeny Tarasov";
      maintainer = "etarasov.ekb@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell binding for C PAM API";
      description = "This package provides PAM interface for Haskell programs. It contains subset of C PAM API bindings. The bindings don't include functions for writing PAM modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."pam" or (errorHandler.sysDepError "pam")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }
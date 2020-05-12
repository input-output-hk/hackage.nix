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
      specVersion = "1.8";
      identifier = { name = "bindings-sane"; version = "0.0"; };
      license = "LGPL-3.0-only";
      copyright = "Copyright (C) 2012  Clint Adams";
      maintainer = "clint@debian.org";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/bindings-sane";
      url = "";
      synopsis = "FFI bindings to libsane";
      description = "These are FFI bindings to the SANE API (version 1.0)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
          ];
        pkgconfig = [
          (pkgconfPkgs."sane-backends" or (errorHandler.pkgConfDepError "sane-backends"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }
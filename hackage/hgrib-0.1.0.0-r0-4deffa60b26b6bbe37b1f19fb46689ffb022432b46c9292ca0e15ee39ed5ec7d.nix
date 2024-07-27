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
    flags = { build_examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hgrib"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2015 Mattias Jakobsson";
      maintainer = "mjakob422@gmail.com";
      author = "Mattias Jakobsson";
      homepage = "https://github.com/mjakob/hgrib";
      url = "";
      synopsis = "Unofficial bindings for GRIB API";
      description = "Unofficial bindings to ECMWF's GRIB API library for reading WMO\nFM-92 GRIB edition 1 and edition 2 messages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."grib_api" or (errorHandler.sysDepError "grib_api")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "get" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgrib" or (errorHandler.buildDepError "hgrib"))
          ];
          buildable = if !flags.build_examples then false else true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hgrib" or (errorHandler.buildDepError "hgrib"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }
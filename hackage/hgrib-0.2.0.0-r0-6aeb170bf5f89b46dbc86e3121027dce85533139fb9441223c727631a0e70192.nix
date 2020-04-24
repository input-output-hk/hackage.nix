{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build_examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hgrib"; version = "0.2.0.0"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."grib_api" or ((hsPkgs.pkgs-errors).sysDepError "grib_api"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "get" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hgrib" or ((hsPkgs.pkgs-errors).buildDepError "hgrib"))
            ];
          buildable = if !flags.build_examples then false else true;
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hgrib" or ((hsPkgs.pkgs-errors).buildDepError "hgrib"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }
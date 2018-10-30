{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      build_examples = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hgrib";
        version = "0.1.0.0";
      };
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
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."grib_api") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      exes = {
        "get" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hgrib)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.hgrib)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }
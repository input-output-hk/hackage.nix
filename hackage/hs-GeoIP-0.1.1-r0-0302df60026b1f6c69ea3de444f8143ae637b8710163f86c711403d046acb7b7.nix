{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hs-GeoIP";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozataman@gmail.com";
      author = "Ozgun Ataman";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to the MaxMind GeoIPCity database via the C library";
      description = "This library provides fast, idiomatic Haskell bindings to MaxMind's\nGeoIPCity IP-based geolocation C API.\n\nMaxMind GeoIP City database allows geo-location lookups from IP addresses.\n\nTo get started, you can download the latest binary database\ndistribution from: <http://www.maxmind.com/app/geolitecity>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
        ];
        libs = [ (pkgs."GeoIP") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }
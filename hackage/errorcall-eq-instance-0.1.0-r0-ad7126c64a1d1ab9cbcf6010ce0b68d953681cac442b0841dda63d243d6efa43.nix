{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "errorcall-eq-instance";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "An orphan Eq instance for ErrorCall";
      description = "Prior to @base-4.7.0.0@ there was no @Eq@ instance for\n@ErrorCall@.  This package provides an orphan instance.";
      buildType = "Simple";
    };
    components = {
      "errorcall-eq-instance" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.errorcall-eq-instance)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }